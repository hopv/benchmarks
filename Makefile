all: stats

stats:
	cargo run --manifest-path stats/Cargo.toml -- caml/lia clauses/lia

.PHONY: stats