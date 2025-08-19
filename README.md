# 📘 Lecture Notes for the Statistics Course at HSE

These are my personal lecture notes for the Statistics course at **HSE**.  
The notes are written in **LaTeX** (with R/Sweave integration) and are divided into two main parts: *Probability* and *Statistics*.  

---

## 📂 Structure

```
.
├── main.tex            # Main LaTeX file
├── knit_chapter.R      # knits the chapters into a .tex document in build/ and saves the images in /images
├── preamble.tex        # Common packages & formatting
|── front_matter.tex    # The title page and the table of contents
├── chapters/           # Each chapter as a separate .Rnw/.tex file
├── images/             # Figures and diagrams
├── build/              # Compiled .tex output from Sweave/knitr
└── bibliography/       # References (BibTeX)
```

---

## 📖 Contents

### Part I: Probability
- Introduction to probability theory  
- Focus on **discrete sample spaces** (to keep things clear and intuitive)  
- Motivation: the notion of *sample space* often feels artificial, especially for linguistic applications  

### Part II: Statistics
- Heavy emphasis on **examples and computation in R** (most of the examples are adapted from [George Moroz’s GitHub repository](https://github.com/agricolamz).)
- Covers hypothesis testing and inference with **mathematical rigor**  


---

## ⚙️ Requirements

To compile the notes, you’ll need:  
- **LaTeX** distribution (TeX Live / MikTeX recommended)  
- **R** (≥ 4.0)  
- **knitr** or **Sweave** for weaving `.Rnw` files  
- Common LaTeX packages: `amsmath`, `graphicx`, `hyperref`, `classicthesis`, etc.  

---

## ▶️ How to Build

1. Knit individual chapters (from `chapters/`) using `Sweave` or `knitr`.  
   Example in R:  
   ```r
   knitr::opts_chunk$set( fig.path = "images/probability/",  # where to save plots, fig.width = 6, fig.height = 4)
   knitr::knit("chapters/probability.Rnw", output = "build/probability.tex")
   ```  

  You can use the R script provided in knit_chapter.R
    ```bash
    Rscript knit_chapter.R probability.Rnw 
    ```

3. Compile the main document:  
   ```bash
   pdflatex main.tex
   bibtex main
   pdflatex main.tex
   pdflatex main.tex
   ```

---

## 📝 License

These notes are provided **for educational purposes only**.  
Feel free to use and adapt them, but please acknowledge the source if you redistribute.  
