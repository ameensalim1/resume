# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX-based resume repository containing a professional resume for Ameen Salim, a computer science student with expertise in AI/ML and software engineering. The resume is built using the `article` document class with custom formatting and styling.

## Build Commands

```bash
# Compile the resume to PDF
latexmk -pdf main.tex

# Clean auxiliary files
latexmk -c

# Force recompilation
latexmk -pdf -f main.tex
```

## File Structure

- `main.tex` - Primary LaTeX resume source file
- `main.pdf` - Generated PDF output (compiled resume)
- `main.*` - LaTeX auxiliary files (log, aux, fls, etc.)

## LaTeX Dependencies

The resume uses these LaTeX packages:
- `latexsym`, `fullpage`, `titlesec`, `marvosym`
- `color`, `verbatim`, `enumitem`, `hyperref`
- `fancyhdr`, `babel`, `tabularx`, `glyphtounicode`

## Key Sections

The resume follows a standard structure:
1. **Header** - Contact information and links
2. **Education** - Georgia Tech (MS) and UC Davis (BS)
3. **Technical Skills** - ML/AI, programming languages, cloud platforms
4. **Experience** - AI/ML internships and roles
5. **Projects** - Academic and personal ML projects

## Custom Commands

The LaTeX file defines several custom commands for consistent formatting:
- `\resumeItem{}` - Individual bullet points
- `\resumeSubheading{}{}{}{}` - Job/education entries
- `\resumeProjectHeading{}{}` - Project headers
- `\resumeSubHeadingListStart/End` - List environments

## Development Notes

- Uses 11pt font on letterpaper
- ATS-optimized with `\pdfgentounicode = 1`
- Custom margins and spacing for single-page format
- Hyperlinked email, LinkedIn, and GitHub URLs