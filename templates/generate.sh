#!/bin/bash
set -euxo pipefail

script_path="$(realpath "$0")"
script_directory="$(dirname "${script_path}")"

cd "${script_directory}/workflows"

for file in data/*.yml; do
  mustache --error \
    "${file}" \
    rspec-with-databases.yml.mustache \
  | sed 's/[[:space:]]*$//g' \
  | tee ../../.github/workflows/"$(basename "${file}")"
done
