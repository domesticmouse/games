#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "samples/ads"
    "samples/crossword"
    "samples/multiplayer"
    "templates/basic"
    "templates/card"
    "templates/endless_runner"
)

ci_projects "stable" "${PROJECT_NAMES[@]}"

echo "-- Success --"
