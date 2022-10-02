# LaTeX-template
This is a $\LaTeX$ template created by lcs27. This template aims at allowing Chinese-English-French multilanguage typing, by providing separable packages for the ease of modular building.

## Fully-equipped template
### Method of usage
#### Overleaf template
The whole package is provided as a template on overleaf. Please go to [Overleaf template](https://www.overleaf.com/read/gjbchmtztjkg) and simply use it!

#### Local
To use this template in your local interpreter, first you need to configure your $\LaTeX$ interpreter into `XeLaTeX`.    

Besides, you need to add following folders in a same folder, which is called `sourcepath`
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
### Provided template

Up to now, three templates are provided. For details about these templates, please see their corresponding page:
- [artcile](./article)
- [beamer](./beamer)
- Master Thesis


## Support packages
*ATTENTION! These packages are all included in our fully-equipped template, you don't need to include it again. This part is only for users who need partial package. The tests are all done with `XeLaTeX` interpreter, problems may occur if you use other interpreter!*

**Method of usage:** ` \usepackage{path/to/package}`     

*Remark*: Most of LCS27** packages don't include so much new packages, but just regroup many others packages and add minor modification! When you first use it, your interpreter may ask you to download it.

### Mathmatical symbols
[LCSsymbols](./symbols/LCSsymbols.sty) designed a set of mathmatical symbols which may be useful in mechanics, typically in fluid mechanics. It regroups classical math packages and some personnal designed shortcut to help writing mathmatical paper.     
*To be implemented!* An article using this package may be converted to classical packages with a transformer provided in the folder.        
User's guide is provided in [this link](./example/article.pdf).   

### Codes
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*

### References
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*

### Graphs
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*

## Language support
*Oooops, the template is usable, but I am writing the documentation and please wait several days!*

## Copyright
LCS27 template — Version 2.0    
Written in 2021-2022 by [LCS27](https://github.com/lcs27)    
This work is released under the CC0 1.0 Universal license. See the [accompanying LICENSE file](https://creativecommons.org/share-your-work/public-domain/cc0/) for details.     

## Acknowledgements
Many templates are used as a reference during the implementation of this template, as well as many websites who help to answer my question. Here I would like to thank these templates:
- https://forge.delab.re/matteo/beamertheme-bruno
- https://www.overleaf.com/latex/templates/beamer-fuld-16-9-ucph/mrfzkdxwjdhs
- https://www.overleaf.com/latex/templates/template-para-apresentacoes-de-ufpb/kjtvffgvchkt
- https://gitee.com/xuanleng/qm-exams/blob/master/elegantbook.cls