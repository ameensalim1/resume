#!/bin/bash

# Clean script to remove LaTeX fluff files and keep only essential outputs
# This script preserves .tex, .pdf, CLAUDE.md, and README.md files

echo "Cleaning LaTeX fluff files..."

# Files to keep:
# - .tex files (source)
# - .pdf files (output)
# - CLAUDE.md (project instructions)
# - README.md (documentation)

# Files to remove (LaTeX auxiliary files)
fluff_files=(
    "*.aux"
    "*.log"
    "*.fls"
    "*.fdb_latexmk"
    "*.out"
    "*.synctex.gz"
    "*.toc"
    "*.lof"
    "*.lot"
    "*.bbl"
    "*.blg"
    "*.idx"
    "*.ind"
    "*.ilg"
    "*.glo"
    "*.gls"
    "*.alg"
    "*.acr"
    "*.acn"
    "*.glg"
    "*.ist"
    "*.loa"
    "*.lol"
)

# Count files to be removed
files_removed=0

for pattern in "${fluff_files[@]}"; do
    # Use find to locate and remove matching files
    while IFS= read -r -d '' file; do
        if [ -f "$file" ]; then
            echo "Removing: $file"
            rm "$file"
            ((files_removed++))
        fi
    done < <(find . -maxdepth 1 -name "$pattern" -type f -print0)
done

echo ""
echo "Cleanup complete!"
echo "Files removed: $files_removed"
echo ""
echo "Remaining files:"
ls -la