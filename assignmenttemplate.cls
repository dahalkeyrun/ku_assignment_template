% Template for Assignment Report at KU DoCSE
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{assignmenttemplate}[2023/10/01]

\LoadClass[12pt]{report}

\RequirePackage[a4paper,left=1.5in,right=1.25in,top=1.25in,bottom=1.25in]{geometry}

% Use Times New Roman font
\RequirePackage{times}

\RequirePackage{graphicx}
\RequirePackage{sectsty}

% For Bibliography
\RequirePackage{natbib}
\bibliographystyle{apalike}
\renewcommand{\bibname}{References} 

% Year
\global\let\@y\@empty
\def\y#1{%
    \ifx\@y\@empty
        \gdef\@y{#1}
    \fi}

% Semester / Part
\global\let\@sem\@empty
\def\sem#1{%
    \ifx\@sem\@empty
        \gdef\@sem{#1}
    \fi}

% Group (CE/CS)
\global\let\@group\@empty
\def\group#1{%
    \ifx\@group\@empty
        \gdef\@group{#1}
    \fi}

% Course code
\global\let\@coursecode\@empty
\def\coursecode#1{%
    \ifx\@coursecode\@empty
        \gdef\@coursecode{#1}
    \fi}

% Instructor's name
\global\let\@instructor\@empty
\def\instructor#1{%
    \ifx\@instructor\@empty
        \gdef\@instructor{#1}
    \fi}

% Submitted by (single member)
\global\let\@member\@empty
\newcommand\member[2]{%
    \ifx\@member\@empty
        \gdef\@member{#1 (#2)} % Store the member's name and roll number
    \else
        \ClassError{assignmenttemplate}{Only one member is allowed}{}%
    \fi
}

% Font size for Section, Subsection, Chapter
\sectionfont{\fontsize{14}{20}\selectfont}
\subsectionfont{\fontsize{13}{18}\selectfont}
\subsubsectionfont{\fontsize{12}{17}\selectfont}
\chapterfont{\fontsize{16}{24}\selectfont}

% Customize Chapter heading
\def\@makechapterhead#1{
    \fontsize{16}{24}\fontseries{b}\selectfont
    \noindent
    Chapter \thechapter: #1\\

    \normalfont\fontsize{12}{18}\selectfont
}

% Title page for Assignment
\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \fontseries{b}
        \fontsize{16}{24}
        \selectfont
        
        Kathmandu University
                
        Department of Computer Science and Engineering 
        
        Dhulikhel, Kavre
        
        \vspace{0.5cm}
        \includegraphics[width=4cm]{logo-200}
        \vspace{1cm}
        
        \textbf{Report of the Assignment}
        
        \vspace{0.5cm}
        \fontsize{14}{21}\selectfont
        ``\@title'' % Assignment title in quotes
        
        \vspace{0.5cm}
        \fontsize{12}{18}\selectfont
        Subject: Data Structures and Algorithms % Hardcoded subject
        
        \vspace{0.5cm}
        Course Code: \@coursecode % Course code
        
        \vspace{1.2cm}
        \fontsize{14}{21}\selectfont
        Submitted by:
        
        \fontsize{12}{18}\selectfont
        \@member % Only one member is displayed
        
        \vspace{1cm}
        \fontsize{14}{21}\selectfont
        
        Submitted to:
        
        \fontsize{12}{18}\selectfont
        \@instructor % Instructor's name
        
        Department of Computer Science and Engineering
        
        \vspace{0.5cm}
        \@date
        
    \end{titlepage}
}

% Abstract 
\renewenvironment{abstract}
{
    \newpage
    \fontseries{b}
    \fontsize{16}{24}
    \selectfont
    \begin{flushleft}
        \centering\textbf{Abstract}\par
    \end{flushleft}

    \normalfont\fontsize{12}{18}\selectfont
    \noindent
}

% Keywords
\newenvironment{keywords}
{
    \noindent
    \normalfont\fontsize{12}{18}\selectfont
    \textbf{Keywords:}  
    \fontshape{it}\selectfont
}

% Acknowledgements
\newenvironment{acknowledgements}
{
    \newpage
    \thispagestyle{empty}
    \fontseries{b}\fontsize{16}{24}	\selectfont
    \begin{flushleft}
        \centering\textbf{Acknowledgements}\par
    \end{flushleft}
    
    \normalfont\fontsize{12}{18}\selectfont
    \noindent
}
