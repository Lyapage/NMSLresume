\ProvidesClass{NMSLresume}[03/25/2017 resume class] 
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
%--------------------------------------------------------------------------------------------------------------
%Required Package: 

\RequirePackage{marvosym}		% Telephone, email icon
\RequirePackage{tikz}				% drawing package
\RequirePackage{ragged2e}		% text alignment
\RequirePackage[absolute]{textpos}			%box absolute position
\usetikzlibrary{shapes}
\usetikzlibrary{decorations}
\usetikzlibrary{positioning}
\RequirePackage{geometry} 		% define a4 paper geometry
\geometry{lmargin = 0pt,
			rmargin = 0pt,
			tmargin = 0pt,
			bmargin =0pt}
\RequirePackage{pbox}			% arrange resume into three parts
\RequirePackage{xcolor}			% define required colors
\RequirePackage[T1]{fontenc}		% probably define symbol/icon in context
 
 \linespread{1}
 \DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


%--------------------------------------------------------------------------------------------------------------
%using pdfliteral to draw address icon
\def\house{\hbox{\kern3pt \vbox to10pt{}% 
   \pdfliteral{q 0 0 m 0 5 l 5 10 l 10 5 l 10 0 l 7 0 l 7 5 l 3 5 l 3 0 l f
               1 j 1 J -2 5 m 5 12 l 12 5 l S Q }%
   \kern 13pt}} % that's how to define an icon for house 




%--------------------------------------------------------------------------------------------------------------
%Define colors:

\definecolor{back1}{HTML}{FFFFF0}			%background color for topbox(personal infomation)
\definecolor{back2}{HTML}{DCDCDC}			%background color for leftbox{skills, self-asscessment, major}
\definecolor{back3}{HTML}{F8F8FF}			%background color for rightbox{education,experience, projects}
\definecolor{pic}{HTML}{000080}				%''Navy'' adopted here to express color of name and icons					


%information showed in topbox
\newcommand{\rename}[1]{  \begin{large} \fontfamily{pcr}{\itshape{\textbf{#1}}} \end{large} }	%resume name

\newcommand{\remail}[1]{ \Letter:\fontfamily{pcr}\itshape{#1}}									%resume email 

\newcommand{\readd}[1]{ \scalebox{0.6}{\house:}\fontfamily{pcr}\itshape{#1}}					%resume address

\newcommand{\rephone}[1]{ \Mobilefone:\fontfamily{pcr}\itshape{#1} }							%resume phone number

\newcommand{\rewebsite}[1]{ \Mundus:\fontfamily{pcr}\itshape{#1}  }							%resume perssonal website

					
\newcommand{\pinfo}[5]{\par\noindent\colorbox{back2}{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{\vspace{6pt}
\centering #1 \\ 
#2	\hspace{36pt}	#3	\hspace{36pt}	#4\\ 
#5  }}}				%layout for personal infomation (topbox)

 \newcommand{\sepl}{\textcolor{pic}{\rule{\linewidth}{0.6mm}}}		%seperation line for each box

%--------------------------------------------------------------------------------------------------------------

%page layout below personal infomation box
\newcommand{\binfo}{  \par\noindent\colorbox{white}{\begin{minipage}[t][0.929\textheight]{0.33\textwidth}





\end{minipage}}%
%
\setlength{\linewidth}{0.3mm}
\vline
\hspace{2pt}
  \begin{minipage}[t]{0.65\textwidth}


	
\end{minipage}%   
}





