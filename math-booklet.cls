\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math-booklet}[Math Booklet]

\LoadClass[openany]{book}

\RequirePackage[top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{amsmath, amsfonts, amssymb, esint}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage{pgf,tikz,pgfplots}
\RequirePackage{mathrsfs}
\RequirePackage{enumerate}

\titleformat{\chapter}[display]
	{\normalfont\bfseries}{}{0pt}{\Huge}

\newpagestyle{mystyle}
{
	\sethead[\thepage][][\chaptertitle]{\thesection~\sectiontitle}{}{\thepage}
}
\pagestyle{mystyle}

\renewenvironment{equation}
{
	\begin{equation*}
	\begin{gathered}
}
{           
	\end{gathered}
	\end{equation*}
}