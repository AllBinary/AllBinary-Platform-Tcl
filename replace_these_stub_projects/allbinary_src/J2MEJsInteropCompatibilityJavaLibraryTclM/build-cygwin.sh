#!/usr/bin/env bash

# Sources the Tcl files the Tcl converter generated with Cygwin tclsh after the hand written runtime and the Tcl sources
# of the dependencies (META-INF/tcl/src of their jars). Sourcing parses every file and creates every TclOO class and
# namespace, so syntax and definition errors fail the build. This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$6"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Tcl sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"

check="$object_dir/check.tcl"
{
    for runtime in "$runtime_dir"/*.tcl; do echo "source {$runtime}"; done
    if [ -d "$dependency_dir/src" ]; then
        find "$dependency_dir/src" -type f -name '*.tcl' | sort | while IFS= read -r file; do echo "source {$file}"; done
    fi
    find "$source_dir" -type f -name '*.tcl' | sort | while IFS= read -r file; do echo "source {$file}"; done
    echo "puts {Tcl sourced: $artifact}"
} > "$check"

echo "Tcl sources: $(find "$source_dir" -name '*.tcl' | wc -l)"
if "$compiler" "${compiler_flags[@]}" "$check"; then
    exit 0
fi
echo "Tcl build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
