\ProvidesClass{NMSLresume}[03/25/2017 resume class] 
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
%--------------------------------------------------------------------------------------------------------------
%Required Package: 

\RequirePackage{marvosym}		% Telephone, email icon
\RequirePackage{tikz}				% drawing package
\RequirePackage{ragged2e}		% text alignment
\RequirePackage{pgffor}			%for-each usage
\RequirePackage{enumerate}		%leftbar arrangement
\RequirePackage[absolute]{textpos}			%box absolute position
\usetikzlibrary{shapes}
\usetikzlibrary{arrows}
\usetikzlibrary{mindmap}
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

\definecolor{back1}{HTML}{FFFFF0}			%background color for top box(personal information)
\definecolor{back2}{HTML}{DCDCDC}			%background color for left box{skills, self-assessment, major}
\definecolor{back3}{HTML}{F8F8FF}			%background color for right box{education,experience, projects}
\definecolor{pic}{HTML}{000080}				%''Navy'' adopted here to express color of name and icons					
\definecolor{mainblue}{HTML}{0E5484}		%skill bar color fill
\definecolor{maingray}{HTML}{B9B9B9}		%skill bar color draw
\definecolor{mm}{HTML}{1A5276}			%background color for mind map of chemical engineering


%Define color for each programming language in tikz environment 
\definecolor{plc1}{HTML}{B22222}						%color for matlab section
\definecolor{plc2}{HTML}{9400D3}						%color for python section
\definecolor{plc3}{HTML}{F0E68C}						%color for C++
\definecolor{plc4}{HTML}{FF6347}						%PHP\HTML
\definecolor{plc5}{HTML}{9ACD32}							%Java
\definecolor{plc6}{HTML}{4A235A}						%assembly language




%information showed in topbox
\newcommand{\rename}[1]{  \begin{large} \fontfamily{pcr}{\itshape{\textbf{#1}}} \end{large} }	%resume name

\newcommand{\remail}[1]{ \Letter:\fontfamily{pcr}\itshape{#1}}									%resume email 

\newcommand{\readd}[1]{ \scalebox{0.6}{\house:}\fontfamily{pcr}\itshape{#1}}					%resume address

\newcommand{\rephone}[1]{ \Mobilefone:\fontfamily{pcr}\itshape{#1} }							%resume phone number

\newcommand{\rewebsite}[1]{ \Mundus:\fontfamily{pcr}\itshape{#1}  }							%resume personal website

					
\newcommand{\pinfo}[5]{\par\noindent\colorbox{back2}{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{\vspace{6pt}
\centering #1 \\ 
#2	\hspace{36pt}	#3	\hspace{36pt}	#4\\ 
#5  }}}				%layout for personal information (top box)

 \newcommand{\sepl}{\par\noindent\textcolor{pic}{\rule{\linewidth}{0.6mm}}}		%separation line for each box

%--------------------------------------------------------------------------------------------------------------

%page layout below personal information box
\newcommand{\binfo}{  \par\noindent\colorbox{back2}{\begin{minipage}[t][0.935\textheight]{0.33\textwidth}

\pbox[c]{7cm}{\vspace{4pt}\reprogram{master of science in mechanical and aerospace engineering} }

\subsection{Language:}

\lanskill{{Deutsch/2.5},{Mandarin/5.5},{English/5}}

\subsection{Programming languages:}

\par\hspace{14pt}\langraph

\subsection{Chemical engineering :}
\par\hspace{12pt}\chegraph{Aspen ONE}{Aspen\\Plus}{Aspen HYSYS}{Aspen Energy Analyzer}

\subsection{Mechanical engineering:}

\subsection{Visual effect:}

\end{minipage}}%
%
\textcolor{pic}{\vline width 0.6mm}
\hspace{3pt}
  \begin{minipage}[t]{0.65\textwidth}
	
		
\end{minipage}%   
}



\newcommand{\reprogram}[1]{\centering
\begin{large}
\linespread{0.8}
\fontfamily{pcr}\bfseries\textsc{ #1}
\end{large}
}
									
%--------------------------------------------------------------------------------------------------------------					
\renewcommand{\subsection}[1]{
\vspace{8pt}\hspace{6pt}%
\begin{large} \fontfamily{pcr}\bfseries\textup{#1} \end{large}%
\vspace{4pt}%
}

%--------------------------------------------------------------------------------------------------------------
%to design style for x in next part
\newcommand{\barx}[1]{
\fontfamily{pcr}\textmd{#1}
}

%bar graph to represent the ability in language
\newcommand{\lanskill}[1]{
\hspace{6pt}
\begin{tikzpicture}
\foreach [count = \i] \x/\y in {#1}
{
	\draw[fill=maingray,maingray] (0,\i) rectangle (6,\i+0.4);
	\draw[fill=white,mainblue](0,\i) rectangle (\y,\i+0.4);
	\node [above right ] at (0,\i+0.4) {\barx{\x}};
}
\end{tikzpicture}
}

%--------------------------------------------------------------------------------------------------------------
%diagram for programming language:
\newcommand{\langraph}{
\begin{tikzpicture}
	
	\begin{scope}[line width = 4mm,rotate=270]
	\draw[plc1]		(0:2cm) arc (0:90:2cm);
	\draw[plc2]		(90:2cm) arc (90:162:2cm);
	\draw[plc3]		(162:2cm) arc (162:270:2cm);
	\draw[plc4]		(270:2cm) arc (270:306:2cm);
	\draw[plc5]		(306:2cm) arc (306:342:2cm);
	\draw[plc6]		(342:2cm) arc (342:360:2cm);

	
	\newcount\mycount
    \foreach \angle in {0,72,...,3599}
    {
      \mycount=\angle\relax
      \divide\mycount by 10\relax
      \draw[black!15,thick] (\the\mycount:18mm) -- (\the\mycount:22mm);
    }
    
    	\draw (45:2.2cm) node[right] {\fontfamily{pcr}\textup{Matlab}}; 
	\draw (126:2.2cm) node[right] {\fontfamily{pcr}\textup{Python}};
	\draw (216:2.2cm) node[left] {\fontfamily{pcr}\textup{C++}};
	\draw (285:2cm) node[right] {\fontfamily{pcr}\textup{PHP/HTML}};
	\draw (330:2.2cm) node[left] {\fontfamily{pcr}\textup{Java}};
	\draw (355:2.2cm) node[below] {\fontfamily{pcr}\textup{Others}};
	\end{scope}
	
\end{tikzpicture}
}
%--------------------------------------------------------------------------------------------------------------
%Chemical engineering mind map
\newcommand{\chegraph}[4]{
\scalebox{0.7}{
\tikz 
	[root concept/.append style={concept color=mm,text = white}, 
	level 1 concept/.append style={concept color=mm}, mindmap] 
	\node [concept] { \huge\fontfamily{pcr}\textup{#1} } 
		child[grow=30] {node[concept] { \large\fontfamily{pcr}\textup{#2} } } 
		child[grow=0 ] {node[concept] { \large\fontfamily{pcr}\textup{#3} } }
		child[grow = -30] {node[concept] { \large\fontfamily{pcr}\textup{#4} } };
}
}