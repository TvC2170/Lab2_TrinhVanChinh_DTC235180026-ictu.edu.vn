#!/usr/bin/env bash
set -euo pipefail
project_dir="${1:-generated-app}"
mkdir -p "$project_dir"
cp "$(dirname "$0")/package.json" "$(dirname "$0")/server.js" "$(dirname "$0")/Dockerfile" "$(dirname "$0")/.dockerignore" "$project_dir/"
echo "Project files created in $project_dir"
