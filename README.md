# LaTeX-template
This is a $\LaTeX$ template created by lcs27. This template aims at allowing Chinese-English-French multilanguage typing, by providing separable packages for the ease of modular building.

# Fully-equipped template
**Method of use:** 
To use this template, first you need to configure your $\LaTeX$ interpreter into `XeLaTeX`.   
Besides, you need to add following folders be in a same folder, which is called `sourcepath`
- `article`OR`beamer`, which gives the main part of template
- `lang`, which provides language package
- `packages`, which provides multiple packages detailed in support packages
- logos, color files or other files    
Finally, you begin your file redaction: 
1. define the type of document, either an article or a presentation file(beamer)
```
\documentclass[aspectratio=169]{beamer} OR \documentclass[a4paper,twoside,12pt]{article}
```
2. Defining the sourcepath including the above 3 folders
```
\newcommand{\sourcepath}[1]{../#1}
```
3. Use the our theme!
``` 
\usepackage{\sourcepath{beamer/beamerthemeLCS27}}
```
4. Defining your informations
```
\colorpackage{path/to/your/personal/color/package} #color package source, a default is provided!
\background{path/to/your/background/pricture} #beamer title page background
\schoollogo{path/to/your/logo}
\title{Your title} 
\author{LCS27}
\institute{Your institute}
\date{\today}
```
5. Begin your file!
```
\begin{document} 
YOUR CONTENT HERE
\end{document}
```
## Article
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*
## Beamer
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*
## FengRuCup
*Oooops, I am trying to implement this and please wait several days before using this functionality!*

# Support packages
**ATTENTION!** These packages are all included in our fully-equipped template, you don't need to include it again. This part is only for users who need partial package. The tests are all done with `XeLaTeX` interpreter, problems may occur if you use other interpreter!    

**Method of use:** ` \usepackage{path/to/package}`     

*Remark*: Most of packages don't include so much new packages, but just regroup many others packages and add minor modification!

## Mathmatical symbols
[LCSsymbols](./symbols/LCSsymbols.sty)designed a set of mathmatical symbols which may be useful in mechanics, typically in fluid mechanics. It regroups classical math packages and some personnal designed shortcut to help writing mathmatical paper.     
*To be implemented!* A passage using this template may be converted to classical template with a transformer provided in the folder.        
User's guide is provided in [this link](./symbols/LCSsymbols.pdf).   

## Codes
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*

## References

## Graphs

# Language support
*Oooops, I am trying to implement this and please wait several days before using this functionality!*

# Implementing issues