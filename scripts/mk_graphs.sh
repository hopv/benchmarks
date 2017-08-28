#!/bin/bash

benchi_cmd="benchi"
benchi_args=""
plot_args=""

function print_help {
  printf "Generates graphs corresponding to "
  printf "the data files in \033[1mruns/data\033[0m using benchi\n"
  printf "          \033[1mhttps://github.com/AdrienChampion/benchi\033[0m\n\n"
  printf "Options:\n"
  printf "  -h | --help       displays this message\n"
  printf "  -t | --then <cmd> opens the pdf file using \033[1m<cmd>\033[0m\n"
  printf "  -f |              forces file overwriting\n\n"
  printf "Arguments:\n"
  printf "  <cmd>             run benchi with \033[1m<cmd>\033[0m "
  printf "(optional, default \033[1m$benchi_cmd\033[0m)\n"
  exit "$1"
}

function err_header {
  printf "\033[31mError:\033[0m\n"
}

function fail_help {
  print_help 2
}

while [[ $# > 0 ]] ; do
  case "$1" in
    -h | --help)
      print_help 0 ;;
    -f )
      benchi_args="-f on $benchi_args"
      shift
      ;;
    -t | --then)
      shift
      if [ "$1" != "" ] ; then
        printf "Using open command \033[1m$1\033[0m\n"
        plot_args="--then $1 $plot_args"
      else
        err_header
        printf "  missing argument after option \033[1m-t/--then\033[0m\n\n"
        fail_help
      fi
      shift
      ;;
    *)
      benchi_cmd="$1"
      printf "Using custom benchi command \033[1m$benchi_cmd\033[0m\n\n"
      shift
      ;;
  esac
done

$benchi_cmd --help &> /dev/null
test_code="$?"

if [ "$test_code" != "0" ] ; then
  err_header
  printf "  command \033[1m$benchi_cmd\033[0m is undefined, "
  printf   "unable to run \033[1mbenchi\033[0m\n"
  printf "  if it is defined under a different name, pass it to this script\n"
  printf "  otherwise, please install benchi\n\n"
  fail_help
fi

full_cmd="$benchi_cmd $benchi_args plot $plot_args runs/graphs/cumul.pdf cumul runs/data/*.data"
printf "> $full_cmd\n\n"

$full_cmd