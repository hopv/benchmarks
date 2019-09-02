//! Extracts statistics from the benchmarks in this repository.

#[macro_use]
extern crate clap;

use std::{collections::BTreeSet as Set, fmt, path::PathBuf};

use error_chain::bail;
use regex::Regex;

/// Top-level: calls `run` and handles errors.
fn main() {
    match run() {
        Ok(()) => (),
        Err(e) => {
            println!("Error:");
            for e in e.iter() {
                let mut is_first = true;
                for line in e.to_string().lines() {
                    if is_first {
                        is_first = false
                    } else {
                        print!("    ")
                    }
                    println!("{}", line)
                }
            }
            std::process::exit(2)
        }
    }
}

/// A set of files.
pub type Files = Set<PathBuf>;
/// A set of pairs of files.
pub type FilePairs = Set<(PathBuf, PathBuf)>;

lazy_static::lazy_static! {
    /// Regex used to count predicates in `smt2` files.
    pub static ref PRED_REGEX: Regex = Regex::new(r#"\(declare-fun"#).unwrap();
    /// Regex used to count clauses in `smt2` files.
    pub static ref CLAUSE_REGEX: Regex = Regex::new(r#"\(assert"#).unwrap();
}

/// Configuration of the run.
pub struct Conf {
    /// Directory containing the caml files.
    pub caml_dir: String,
    /// Directory containing the clauses.
    pub clause_dir: String,
}
impl Conf {
    /// Constructor from CLAP.
    pub fn of_clap() -> Self {
        let matches = clap_app!(myapp =>
            (version: crate_version!())
            (author: crate_authors!())
            (about: "Extracts statistics from the benchmarks in this repository")
            (@arg caml_dir:
                +required
                "Directory containing the caml files"
            )
            (@arg clause_dir:
                +required
                "Directory containing the clauses corresponding to the caml files"
            )
        )
        .get_matches();

        let caml_dir = matches
            .value_of("caml_dir")
            .expect("the `caml_dir` required argument is missing")
            .to_string();
        let clause_dir = matches
            .value_of("clause_dir")
            .expect("the `clause_dir` required argument is missing")
            .to_string();
        Self {
            caml_dir,
            clause_dir,
        }
    }
}

/// Runs everything.
pub fn run() -> Res<()> {
    let conf = Conf::of_clap();

    let file_pairs = io::caml_clause_pairs(&conf)?;

    let mut stats = Stats::with_capacity(file_pairs.len());
    for (ml, smt2) in file_pairs {
        let current_stats = FileStats::new(&ml, &smt2).chain_err(|| {
            format!(
                "while extracting stats from {} / {}",
                ml.to_string_lossy(),
                smt2.to_string_lossy()
            )
        })?;
        stats.push(current_stats)
    }

    let full_stats = FullStats::new(&stats);

    for line in full_stats.as_latex().lines() {
        println!("{}", line)
    }

    Ok(())
}

/// Statistics of an ml/smt2 pair.
pub struct FileStats {
    /// Number of lines in the ml file.
    pub ml_lines: usize,
    /// Number of lines in the clause file.
    pub smt2_lines: usize,
    /// Number of predicates in the clause file.
    pub smt2_preds: usize,
    /// Number of clauses in the clause file.
    pub smt2_clauses: usize,
}
impl fmt::Display for FileStats {
    fn fmt(&self, fmt: &mut fmt::Formatter) -> fmt::Result {
        write!(
            fmt,
            "ml: {} lines | smt2: {} lines, {} predicates, {} clauses",
            self.ml_lines, self.smt2_lines, self.smt2_preds, self.smt2_clauses
        )
    }
}
impl FileStats {
    /// Creates some statistics about an ml/smt2 pair.
    pub fn new(ml: &PathBuf, smt2: &PathBuf) -> Res<Self> {
        let ml_content = io::read(&ml)
            .chain_err(|| format!("while reading ml file `{}`", ml.to_string_lossy()))?;
        let ml_lines = ml_content.lines().count();

        let smt2_content = io::read(&smt2)
            .chain_err(|| format!("while reading smt2 file `{}`", smt2.to_string_lossy()))?;
        let smt2_lines = smt2_content.lines().count();
        let smt2_preds = {
            let mut count = 0;
            let mut pos = 0;
            while let Some(mtch) = PRED_REGEX.find_at(&smt2_content, pos) {
                pos = mtch.end();
                count += 1
            }
            count
        };
        let smt2_clauses = {
            let mut count = 0;
            let mut pos = 0;
            while let Some(mtch) = CLAUSE_REGEX.find_at(&smt2_content, pos) {
                pos = mtch.end();
                count += 1
            }
            count
        };
        Ok(Self {
            ml_lines,
            smt2_lines,
            smt2_preds,
            smt2_clauses,
        })
    }
}

/// Statistics.
pub type Stats = Vec<FileStats>;

/// Full final statistics.
pub struct FullStats {
    /// Number of files.
    pub count: usize,
    /// Stats about ml loc.
    pub ml_loc: FinalStats,
    /// Stats about smt2 loc.
    pub smt2_loc: FinalStats,
    /// Stats about smt2 predicates.
    pub smt2_preds: FinalStats,
    /// Stats about smt2 clauses.
    pub smt2_clauses: FinalStats,
}
impl FullStats {
    /// Constructor.
    pub fn new(stats: &Stats) -> Self {
        let ml_loc = FinalStats::new(stats, |stats| stats.ml_lines);
        let smt2_loc = FinalStats::new(stats, |stats| stats.smt2_lines);
        let smt2_preds = FinalStats::new(stats, |stats| stats.smt2_preds);
        let smt2_clauses = FinalStats::new(stats, |stats| stats.smt2_clauses);
        Self {
            count: stats.len(),
            ml_loc,
            smt2_loc,
            smt2_preds,
            smt2_clauses,
        }
    }

    /// Latex version.
    pub fn as_latex(&self) -> String {
        let mut s = r#"\begin{tabular}[l || r | r | r | r | r]"#.to_string();
        s.push_str("\n    ");
        s.push_str(r#" & \textbf{max}"#);
        s.push_str(r#" & \textbf{mean}"#);
        s.push_str(r#" & \textbf{variance}"#);
        s.push_str(r#" & \textbf{standard deviation}"#);
        s.push_str(r#"\\\hline\hline"#);
        s.push_str("\n    ");
        s.push_str(r#"lines & "#);
        self.ml_loc.as_latex(&mut s);
        s.push_str("\\\\\n    ");
        // s.push_str(r#"lines (smt2) & "#);
        // self.smt2_loc.as_latex(&mut s);
        // s.push_str("\\\\\n    ");
        s.push_str(r#"predicates & "#);
        self.smt2_preds.as_latex(&mut s);
        s.push_str("\\\\\n    ");
        s.push_str(r#"clauses & "#);
        self.smt2_clauses.as_latex(&mut s);
        s.push_str("\n");
        s.push_str(r#"\end{tabular}"#);

        s
    }
}

/// Final statistics.
pub struct FinalStats {
    /// Sum.
    pub sum: usize,
    /// Minimal value.
    pub min: usize,
    /// Maximal value.
    pub max: usize,
    /// Mean.
    pub mean: f64,
    /// Variance.
    pub variance: f64,
}
impl FinalStats {
    /// Constructor.
    pub fn new<Get>(stats: &Stats, get: Get) -> Self
    where
        for<'a> Get: Fn(&'a FileStats) -> usize,
    {
        let count = stats.len();
        let (min, max, sum, sqr_sum) =
            stats
                .iter()
                .fold((0, 0, 0, 0), |(min, max, sum, sqr_sum), stat| {
                    let stat = get(stat);
                    let min = if stat < min { stat } else { min };
                    let max = if max < stat { stat } else { max };
                    let sum = sum + stat;
                    let sqr_sum = sqr_sum + stat.pow(2);
                    (min, max, sum, sqr_sum)
                });
        let mean = (sum as f64) / (count as f64);
        let variance = (sqr_sum as f64) / (count as f64) - mean.powf(2f64);
        Self {
            sum,
            min,
            max,
            mean,
            variance,
        }
    }

    /// Latex representation.
    pub fn as_latex(&self, s: &mut String) {
        s.push_str(&format!(
            "\\({}\\) & \\({}\\) & \\({}\\) \\({}\\)",
            self.max,
            self.mean,
            self.variance,
            (self.variance as f64).sqrt()
        ))
    }
}

/// File operations and so on.
pub mod io {
    use std::{ffi::OsStr, fs::*, path::Path};

    use super::*;

    /// Opens a file.
    pub fn read<P: AsRef<Path>>(file: P) -> Res<String> {
        use std::io::Read;
        let file_path = file.as_ref();
        let mut file = OpenOptions::new()
            .read(true)
            .write(false)
            .open(file_path)
            .chain_err(|| format!("while opening file `{}`", file_path.to_string_lossy()))?;
        let mut content = String::new();
        file.read_to_string(&mut content)
            .chain_err(|| format!("while reading file `{}`", file_path.to_string_lossy()))?;
        Ok(content)
    }

    /// Changes the extension of a file.
    pub fn change_extension<P: AsRef<Path>, S: AsRef<OsStr>>(file: P, ext: S) -> PathBuf {
        file.as_ref().with_extension(ext)
    }

    /// Returns the ml/smt2 pairs of files.
    pub fn caml_clause_pairs(conf: &Conf) -> Res<FilePairs> {
        let caml_files =
            io::caml_files_of_dir(&conf.caml_dir).chain_err(|| "trying to retrieve caml files")?;
        let clause_files = io::clause_files_of_dir(&conf.clause_dir)
            .chain_err(|| "trying to retrieve clause files")?;

        // Result set of pairs.
        let mut pairs = FilePairs::new();
        // Iterator over the smt2 files.
        let mut clause_files = clause_files.into_iter();
        // Number of stm2 files ignored.
        let mut smt2_ignored = 0;

        'caml_files: for caml_file in caml_files {
            let stripped_caml_file = caml_file
                .strip_prefix(&conf.caml_dir)
                .chain_err(|| "subst ml")?
                .to_path_buf();
            let (parent, stem) = (stripped_caml_file.parent(), stripped_caml_file.file_stem());

            'find_clause_file: while let Some(clause_file) = clause_files.next() {
                let stripped_clause_file = clause_file
                    .strip_prefix(&conf.clause_dir)
                    .chain_err(|| "subst smt2")?
                    .to_path_buf();
                if parent == stripped_clause_file.parent()
                    && stem == stripped_clause_file.file_stem()
                {
                    let is_new = pairs.insert((caml_file, clause_file));
                    assert!(is_new);
                    continue 'caml_files;
                } else {
                    smt2_ignored += 1;
                    continue 'find_clause_file;
                }
            }
            bail!("could not find a clause file for ")
        }

        if smt2_ignored > 0 {
            println!(
                "warning: {} smt2 files do not map directly to any caml file",
                smt2_ignored
            )
        }

        Ok(pairs)
    }

    /// Returns all the caml files in a directory (recursively).
    pub fn caml_files_of_dir<P>(dir: P) -> Res<Files>
    where
        P: AsRef<Path> + Copy,
    {
        io::files_of_dir(dir, |file_path| {
            if file_path.extension() == Some(std::ffi::OsStr::new("ml")) {
                Ok(Some(file_path.to_path_buf()))
            } else {
                Ok(None)
            }
        })
    }

    /// Returns all the clause files in a directory (recursively).
    pub fn clause_files_of_dir<P>(dir: P) -> Res<Files>
    where
        P: AsRef<Path> + Copy,
    {
        io::files_of_dir(dir, |file_path| {
            if file_path.extension() == Some(std::ffi::OsStr::new("smt2")) {
                Ok(Some(file_path.to_path_buf()))
            } else {
                Ok(None)
            }
        })
    }

    /// Returns all the files of a directory that satisfy a predicate.
    pub fn files_of_dir<P, F>(dir: P, pred: F) -> Res<Files>
    where
        P: AsRef<Path> + Copy,
        F: for<'a> Fn(&'a Path) -> Res<Option<PathBuf>>,
    {
        let mut res = Files::new();
        for file in walkdir::WalkDir::new(dir) {
            let file = file.chain_err(|| {
                format!(
                    "while inspecting files of directory `{}`",
                    dir.as_ref().to_string_lossy()
                )
            })?;
            if file.file_type().is_file() {
                let path = file.path();
                if let Some(path_buf) = pred(path)
                    .chain_err(|| format!("while working on file `{}`", path.to_string_lossy()))?
                {
                    let is_new = res.insert(path_buf);
                    if !is_new {
                        bail!("file `{}` appears more than once", path.to_string_lossy())
                    }
                }
            }
        }
        Ok(res)
    }
}

use err::*;
/// Error handling with `error_chain`.
pub mod err {
    error_chain::error_chain! {
        types {
            Error, ErrorKind, ResExt, Res;
        }
        // links {}

        foreign_links {
            Io(std::io::Error)
            /// An input/output error.
            ;
            PrefSubst(std::path::StripPrefixError)
            /// Problem in path prefix substitution.
            ;
        }

        errors {
            /// An error from this crate.
            Blah(blah: String) {
                description("error"),
                display("{}", blah),
            }
        }
    }
}
