#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MAIN_FILE="hamed-book.tex"
EXPORTS_DIR="$SCRIPT_DIR/../../exports"
BUILD_DIR="$(mktemp -d /tmp/hamed-book-build.XXXXXX)"
OUTPUT_PDF="$EXPORTS_DIR/hamed-book.pdf"
cleanup() {
    rm -rf "$BUILD_DIR"
}
trap cleanup EXIT

mkdir -p "$EXPORTS_DIR"

cd "$SCRIPT_DIR"

xelatex -interaction=nonstopmode -halt-on-error -output-directory="$BUILD_DIR" "$MAIN_FILE"
xelatex -interaction=nonstopmode -halt-on-error -output-directory="$BUILD_DIR" "$MAIN_FILE"

cp "$BUILD_DIR/${MAIN_FILE%.tex}.pdf" "$OUTPUT_PDF"
