#!/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.vim
cp -r "$script_dir/.vim/"* ~/.vim/
