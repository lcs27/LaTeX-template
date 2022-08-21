# LaTeX-template
This is a $\LaTeX$ template created by lcs27. This template aims at allowing Chinese-English-French multilanguage typing, by providing separable packages for the ease of modular building.

# Fully-equipped template
Method of use:
To use this template, first you need to configure your $\LaTeX$ interpreter into 

Besides, you need to add following folders be in a same folder, which is called `sourcepath`
- `article`OR`beamer`, which gives the main part of template
- `lang`, which provides language package
- `packages`, which provides multiple packages detailed in support packages
- logos, color files or other files
Finally, you begin your file redaction. The full document should be like this, which behind each line   
```
\documentclass[aspectratio=169]{beamer} OR \documentclass[a4paper,twoside,12pt]{article}
# Above line define the type of document, either a document file or a presentation file

\newcommand{\sourcepath}[1]{../#1} # defining the sourcepath including the above 3 folders
\usepackage{\sourcepath{beamer/beamerthemeLCS27}} # Use the our theme!

# The following part defining
\colorpackage{\sourcepath{color/BHcolor}} #color package source, a default is provided!
\background{../fig/BeihangPicture.jpg} #beamer title page background
\schoollogo{../fig/BeihangLogo.jpg}
\title{一个 \LaTeX 模板} 
\author{LCS27}
\institute{My dear institute}
\date{\today}

\begin{document} #This is where begins this file!
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
**ATTENTION!** These packages are all included in our fully-equipped template, you don't need to include it again. This part is only for users who need partial package. The tests are all done with $\XeTeX$ interpreter, problems may occur if you use other interpreter!  

Method of use: ` \usepackage{path/to/package}`   
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