
alias mk="cp Makefile ./"
export MAKEFLAGS=-j$(nproc)
alias tarf='tar -czf "$1.tar.gz" "$1"'
alias clang-all="find . -name \"*.c\" -o -name \"*.h\" | xargs clang-format -i"