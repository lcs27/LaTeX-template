\RequirePackage[utf8]{inputenc}%For French accents
\RequirePackage[T1]{fontenc}%For French babel
\RequirePackage{ifthen}
\newboolean{@CSenglish}
\DeclareOption{french}{
  \setboolean{@CSenglish}{false}
}
\DeclareOption{english}{
  \setboolean{@CSenglish}{true}
}
\ProcessOptions
\ifthenelse{\boolean{@CSenglish}}{\LoadClass[english]{LCSBeamer}}{\LoadClass[french]{LCSBeamer}}

\setbeamercolor{normal text}{fg=black,bg=white}
\setbeamercolor{alerted text}{fg=BeihangBlue}
\setbeamercolor{example text}{fg=black}
\setbeamercolor{background}{fg=BeihangBlueLow,bg=BeihangBlue}
\setbeamercolor{background canvas}{fg=BeihangBlue,bg=white}
\setbeamercolor{palette primary}{fg=white, bg=BeihangBlueLow}
\setbeamercolor{palette secondary}{fg=black, bg=white}
\setbeamercolor{palette tertiary}{fg=white, bg=BeihangBlue}
\setbeamercolor{frametitle}{fg=BeihangBlue}
\setbeamercolor{title}{fg=BeihangBlue}

\titlegraphic{\leavevmode\smash{\raisebox{5cm}{\includegraphics[scale=0.15]{logos/BH.png}}}}