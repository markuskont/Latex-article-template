\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom_article}[11/10/2015 Custom article class]
\LoadClass[12pt, english]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
%
%% Paragraph indention
\RequirePackage{indentfirst}
\setlength{\parindent}{0em}
\setlength{\parskip}{1em}
%
%% Do not split section headers
\RequirePackage[raggedright]{titlesec}
%
%% start section from new page
\let\stdsection\section
\renewcommand\section{\newpage\stdsection}
%
%% Bibliography
\RequirePackage[backend=bibtex]{biblatex}
\addbibresource{db.bib}
\AtBeginBibliography{\setcounter{maxnames}{10}}
%
%% Margins
\RequirePackage[a4paper,margin=1in]{geometry}
%
%% Line spacing
\RequirePackage{setspace}
%\onehalfspacing
\singlespace

%% Global redefinition of spacing in numbered lists
%\newenvironment{myenum}
%{ \begin{enumerate}
%    \setlength{\itemsep}{0pt}
%    \setlength{\parskip}{0pt}
%    \setlength{\parsep}{0pt}     }
%{ \end{enumerate}                  } 
%
%% Global redefinition of spacing in bulleted lists
%\newenvironment{myitem}
%{ \begin{itemize}
%    \setlength{\itemsep}{0pt}
%    \setlength{\parskip}{0pt}
%    \setlength{\parsep}{0pt}     }
% \end{itemize}                  } 

%% To insert images
%\RequirePackage[pdftex]{graphicx}
%\DeclareGraphicsExtensions{.pdf,.jpeg,.png}
%% To avoid images jumping around on pages
%\RequirePackage{float}
%
%% Table alternative row color
%\RequirePackage[table]{xcolor}
%\definecolor{lightgray}{gray}{0.9}