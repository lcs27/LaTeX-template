%% Language Configuration
\RequirePackage[utf8]{inputenc}%For French accents
\RequirePackage[T1]{fontenc}%For French babel
\RequirePackage{ifthen}
\newboolean{@english}
\DeclareOption{french}{
  \setboolean{@english}{false}
}
\DeclareOption{english}{
  \setboolean{@english}{true}
}
\ExecuteOptions{french}
\ProcessOptions
\LoadClass{beamer}

\ifthenelse{\boolean{@english}}{\RequirePackage[main=english,french]{babel}}{\RequirePackage[main=french,english]{babel}} 
%--------------------- Packages ------------------------%
%% Page
\RequirePackage{geometry}

%% Bibliography & Reference
\RequirePackage{natbib} %Bibliography
\RequirePackage{hyperref} %Reference
\RequirePackage{url} % Use url as reference

%% Math
\RequirePackage{amsmath}%Math formula
\RequirePackage{amsfonts}%Math fonts
\RequirePackage{amsthm}%Theorem-like structures
\RequirePackage{amssymb}%Math symbols
\RequirePackage{mathrsfs}%Math fonts
\RequirePackage{mathtools} %Math symbols 
\RequirePackage{siunitx} %Notation scientific (Ex.: \num{2e+9})

%% Graph & Color
\RequirePackage{graphicx} %use graph format
\RequirePackage[justification=centering]{caption} %Graph caption
\RequirePackage{subcaption} %Graph sub-caption
\RequirePackage{float} %Graph Placement
\RequirePackage{epstopdf} %Convert EPS to PDF
\RequirePackage{xcolor} 

%% Table
\RequirePackage{diagbox} %Diagonal in tables
\RequirePackage{multirow} %Multirows

%% Programming Language
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
\RequirePackage{listings}
\lstdefinestyle{MATLAB}{language=Matlab,
    backgroundcolor=\color{white},     
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

\lstdefinestyle{Python}{
    language=Python,
    backgroundcolor=\color{white},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

\lstdefinestyle{C++}{
    language=C++,
    backgroundcolor=\color{white},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
} 

\lstdefinestyle{TeX}{
    language=TeX,
    backgroundcolor=\color{white},    
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
} 

%---------------------Color---------------%

\usetheme{CambridgeUS}
\definecolor{centralepink}{RGB}{139,120,152}
\definecolor{centralepurple}{RGB}{175,0,57}
\definecolor{BeihangBlue}{RGB}{0,91,172}
\definecolor{BeihangBlueLow}{RGB}{0,172,160}

\setbeamercolor{normal text}{fg=black,bg=white}
\setbeamercolor{alerted text}{fg=BeihangBlue}
\setbeamercolor{example text}{fg=black}
\setbeamercolor{background}{fg=centralepurple,bg=centralepink}
\setbeamercolor{background canvas}{fg=centralepink,bg=white}
\setbeamercolor{palette primary}{fg=white, bg=centralepurple}
\setbeamercolor{palette secondary}{fg=black, bg=white}
\setbeamercolor{palette tertiary}{fg=white, bg=BeihangBlue}
\setbeamercolor{frametitle}{fg=centralepurple}
\setbeamercolor{title}{fg=BeihangBlue}

\titlegraphic{\leavevmode\smash{\raisebox{5cm}{\includegraphics[scale=0.25]{logos/margin.png}}}}

%---------------- Self-defined Command--------------------%

%% Shortcuts
\newcommand{\TBF}{
    \ifthenelse{\boolean{@english}}{\par\centerline{\textcolor[rgb]{1,0,0}{\textbf{\LARGE TO BE FINISHED}}}\par}{\par\centerline{\textcolor[rgb]{1,0,0}{\textbf{\LARGE A FINIR}}}\par}
}
%% Theorems
\newtheorem{proposition}{
    \ifthenelse{\boolean{@english}}{Proposition}{Proposition}
}
\theoremstyle{definition}
\newtheorem{remark}{
    \ifthenelse{\boolean{@english}}{Remark}{Remarque}
}
%% MathCommands
\newcommand{\Deri}[2]{\frac{\mathrm{d} #1}{\mathrm{d} #2}}
\newcommand{\ParDeri}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\DeriN}[3]{\frac{\mathrm{d}^{#3} #1}{\mathrm{d} #2^{#3}}}
\newcommand{\ParDeriN}[3]{\frac{\partial^{#3} #1}{\partial #2^{#3}}}
\newcommand{\cst}{
    \ifthenelse{\boolean{@english}}{\mathbf{constant}}{\mathbf{constante}}
}
\def\vB {\boldsymbol{v}}
\def\aB {\boldsymbol{a}}
\def\omegaB{\boldsymbol{\omega}}

\def\laplace{\triangle}
\def\scalaire{\cdot}

%% Simple Image Insert
\newcommand{\InsertFigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}