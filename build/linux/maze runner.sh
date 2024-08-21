#!/bin/sh
echo -ne '\033c\033]0;maze runner\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/maze runner.x86_64" "$@"
