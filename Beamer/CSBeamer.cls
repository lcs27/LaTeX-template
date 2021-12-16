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
\setbeamercolor{alerted text}{fg=centralepurple}
\setbeamercolor{example text}{fg=black}
\setbeamercolor{background}{fg=centralepurple,bg=centralepink}
\setbeamercolor{background canvas}{fg=centralepink,bg=white}
\setbeamercolor{palette primary}{fg=white, bg=centralepurple}
\setbeamercolor{palette secondary}{fg=black, bg=white}
\setbeamercolor{palette tertiary}{fg=white, bg=centralepink}
\setbeamercolor{frametitle}{fg=centralepurple}
\setbeamercolor{title}{fg=centralepurple}

\titlegraphic{\leavevmode\smash{\raisebox{5cm}{\includegraphics[scale=0.25]{logos/CS.png}}}}