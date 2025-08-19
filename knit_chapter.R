#!/usr/bin/env Rscript

# knit_chapter.R
# Usage: Rscript knit_chapter.R chapter1.Rnw

args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
  stop("Please provide the name of a .Rnw file in chapters/. Example:\n  Rscript knit_chapter.R chapter1.Rnw")
}

library(knitr)

file_in <- args[1]
chapter_name <- tools::file_path_sans_ext(basename(file_in))
rnw_path <- file.path("chapters", file_in)
tex_path <- file.path("build", paste0(chapter_name, ".tex"))
fig_path <- file.path("images", chapter_name, "/")

# Ensure dirs exist
if (!dir.exists("build")) dir.create("build")
if (!dir.exists("images")) dir.create("images")
if (!dir.exists(fig_path)) dir.create(fig_path, recursive = TRUE)

# Configure knitr
opts_chunk$set(fig.path = fig_path)

# Knit directly to build (body only)
knit(input = rnw_path, output = tex_path)

message("✓ Knitted ", rnw_path, " → ", tex_path)
message("✓ Figures stored in: ", fig_path)


