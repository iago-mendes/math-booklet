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

% FORMAT

\titleformat{\chapter}[display]
	{\normalfont\bfseries}{}{0pt}{\Huge}

\newpagestyle{mystyle} {
	\sethead{\chaptertitle}{}{\thesection~\sectiontitle}
	\headrule

	\setfoot{}{\thepage}{}
}
\pagestyle{mystyle}

\renewenvironment{equation} {
	\begin{equation*}
	\begin{gathered}
}
{           
	\end{gathered}
	\end{equation*}
}

\newenvironment{topics} {
	\begin{itemize}
}
{           
	\end{itemize}
}

\newenvironment{topic}[1] {
	\item #1 \newline
} {}

% basic notations

\renewcommand{\t} % times
{
	\cdot
}

\newcommand{\qtq} % therefore
{
	\quad \therefore \quad
}

\newcommand{\tq} % therefore 2
{
	\therefore \quad
}

\newcommand{\abs}[1]
{
	\left| #1 \right|
}

\newcommand{\ifonly} % if and only if
{
	\quad \Leftrightarrow \quad
}

% vector notations

\renewcommand{\vector}[1] % vector
{
	% \overrightarrow{#1}
	\textbf{#1}
}

\newcommand{\vectorMagnitude}[1] % vector magnitude
{
	\left|\left|\overrightarrow{#1}\right|\right|
	\left|\left|\textbf{#1}\right|\right|
}

\newcommand{\magnitude}[1] % vector magnitude (no arrow)
{
	\left|\left|#1\right|\right|
}

\newcommand{\vectorUnit}[1] % vector unit
{
	\hat{\textbf{#1}}
}

\newcommand{\dotProduct} % dot product
{
	\bullet
}

\newcommand{\crossProduct} % cross product
{
	\times
}

% calculus notations

\newcommand{\tends}
{
	\rightarrow
}

\newcommand{\derivative}[2]
{
	\frac{d #1}{d #2}
}

\newcommand{\partialDerivative}[2]
{
	\dfrac{\strut \partial #1}{\strut \partial #2}
	% \fraction{\partial #1}{\partial #2}
}

\newcommand{\gradient}
{
	\nabla
}

% Laplace Transform
\newcommand{\laplace}[1] {
	\mathcal{L} \left[ #1 \right]
}

% Natural numbers
\newcommand{\N}
{
	\mathbb{N}
}
