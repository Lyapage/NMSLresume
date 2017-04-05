\ProvidesClass{NMSLresume}[03/25/2017 resume class] 
\LoadClass[a4paper]{article}
\NeedsTeXFormat{LaTeX2e}
%--------------------------------------------------------------------------------------------------------------
%Required Package: 

\RequirePackage{hyperref}		%add links from github
\RequirePackage{tcolorbox}		%shape used in section
\RequirePackage{amsmath}		%describing some math models
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
\definecolor{mg}{HTML}{45B39D}				%color box for mechanical graph
\definecolor{tg}{HTML}{CD5C5C}				%color for typography background color


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

\newcommand{\rewebsite}[1]{ \Mundus:\fontfamily{pcr}\itshape{\url{#1}}  }							%resume personal website

					
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
\par\lanskill{{Deutsch/2.5},{Mandarin/5.5},{English/4.7}}

\subsection{Programming languages: }
\par\hspace{14pt}\langraph

\subsection{Chemical engineering: }
\par\hspace{6pt}\chegraph{Aspen ONE}{Aspen\\Plus}{Aspen HYSYS}{Aspen Energy Analyzer}
\par\vspace{6pt}\hspace{6pt} \colorbox{mm}{   \fontfamily{pcr}\bfseries{\textcolor{white}{Piping system-AutoCAD Plant 3D}}}

\subsection{Mechanical engineering:}
\par\hspace{6pt}\megraph{Autodesk Inventor}{NX CAM Express}{ANSYS}

\subsection{Typography/Documents:}
\par\typograph{{MS Word/Latex/4.5}}


\subsection{Computer graphics:}
\par\hspace{6pt}\comgraph{Autodesk 3ds Max}{Adobe Illustrator}

\subsection{Other tools:}
\par\hspace{6pt} \fontfamily{pcr}\textup{MS Office / git / Netbeans}
\par\hspace{6pt} \fontfamily{pcr}\textup{Mathematica / Visual Studio }

\end{minipage}}%
%
\textcolor{pic}{\vline width 0.6mm}
\hspace{3pt}
  \begin{minipage}[t]{0.65\textwidth}
	\vspace{-24pt}
	\section{Interests}
	\vspace{-6pt}
	\interest{Simulation of chemical manufacturing process }
	{Controlling system of UAV,satellite and nonlinear theory}
	{Algorithm of computer vision, computing aesthetics}

	\vspace{-18pt}
	\section{Education}
	
	\begin{edu}
	\eduitem
		{2015-2017}
		{M.S The George Washington University}
		{Specializing in design of mechanical system}
		{Washington DC,USA}
	\eduitem
		{2011-2015}
		{B.S University of Science and Technology of China}
		{Majoring in chemistry and chemical engineering}
		{Hefei,China}
	\end{edu}
	
	
	\vspace{-32pt}
	\section{Experience}
	\vspace{-6pt}
	
	\expr{2016}{Intern Engineer}{SINOPEC Group}{Puguang China}
	{Working for the project that Transmission of Natural Gas from Sichuan to Shanghai at Puguang compressor station.Being familiar with Daniel Measurement and Control system(Daniel Ultrasonic Meter, Danalyzer Gas Chromatographs Model 570/590/700 series etc).Understanding the working mechanism of GE PCL503 centrifugal gas compressor, especially controlling system(UCP,DCS,MCC). Also, grasping PFD of each compressor station and HSE system of China Petrochemical Corp.\\
\url{https://github.com/Lyapage/Intern}}
	
	\expr{2013}{Team member}{Chemitech}{Changzhou China}
	{Leading by a chief engineer and working as a team to design a chemical plant which mainly manufactured 75,000 kg/hr of paraxylene(PX). Serving as a major member which is responsible for simulation of chemical process with Aspen Plus, layout of piping system, optimization of heat exchanger network, formulation of safety report, and design of corresponding chemical equipment like reactor, distillation column etc.\\
	\url{https://github.com/Lyapage/Chemitech/tree/master/simulation}}

	\vspace{-22pt}
	\section{Projects}
	\project
	{Numerical solution}{Partial Differential Equation}{Fluid dynamics}{Python}
	
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
\begin{tikzpicture}
	[root concept/.append style={concept color=mm,text = white}, 
	level 1 concept/.append style={concept color=mm}, mindmap] 
	\node [concept] {   \huge\fontfamily{pcr}\textbf{#1} } 
		child[grow=30] {node[concept] { \large\fontfamily{pcr}\textbf{#2} } } 
		child[grow=0 ] {node[concept] { \large\fontfamily{pcr}\textbf{#3} } }
		child[grow = -30] {node[concept] { \large\fontfamily{pcr}\textbf{#4} } };
\end{tikzpicture}

}
}

%--------------------------------------------------------------------------------------------------------------
%mechanical engineering graph
\newcommand{\megraph}[3]{
\begin{tikzpicture}
	
	\node[rectangle][draw = mg,very thick,fill = back1] at (0,0){\fontfamily{pcr}\slshape\bfseries{#1}};
	\node[rectangle][draw = mg,very thick,fill = back1] at (-0.33, -.7) {\fontfamily{pcr}\slshape\bfseries{#2}};
	\node[rectangle][draw = mg,very thick,fill = back1] at (-1.25,-1.4) {\fontfamily{pcr}\slshape\bfseries{#3}};
	
\end{tikzpicture}
}

%--------------------------------------------------------------------------------------------------------------
% usage of latex and Microsoft Office:
\newcommand{\typograph}[1]{
\hspace{6pt}
\begin{tikzpicture}
\foreach [count = \i] \z/\x/\y in {#1}
{
	\draw[fill=maingray,maingray] (0,\i) rectangle (6,\i+0.4);
	\draw[fill=white,tg](0,\i) rectangle (\y,\i+0.4);
	\node [above right ] at (0,\i+0.4) {\barx{\x}};
	\node[above left] at (6.2,\i+0.4) {\barx{\z}};
}
\end{tikzpicture}
}

%--------------------------------------------------------------------------------------------------------------
% Computer graphics:
\newcommand{\comgraph}[2]{
\begin{tikzpicture}
	
	\node[rectangle][fill = mm,draw = mm,very thick] {\textcolor{white}{\fontfamily{pcr}\textbf{#1}}};
	\node[rectangle][fill = mm,draw = mm,very thick] at (0.1, -0.7) {\textcolor{white}{\fontfamily{pcr}\textbf{#2}}};

\end{tikzpicture}
}

%--------------------------------------------------------------------------------------------------------------
% Define the section style
\renewcommand{\section}[1]{
	\par\vspace{4pt}
	{%
	\begin{Large} \fontfamily{pcr}\textbf{\secbox{#1}} \end{Large}%
	}
	\par\vspace{4pt}%
}
\newcommand{\secbox}[1]{
\begin{tcolorbox}[colframe=mainblue,colback = back2,boxrule=2pt,arc=4pt,
      left=2pt,right=2pt,top=2pt,bottom=2pt,boxsep=0pt,hbox]
  	#1
  \end{tcolorbox}
}

%--------------------------------------------------------------------------------------------------------------
% showing interests:
\newcommand{\interest}[3]{ 

	\par \hspace{6pt} \textbullet \hspace{1pt} \fontfamily{pcr}\textup{#1}
	\par \hspace{6pt} \textbullet \hspace{1pt} \fontfamily{pcr}\textup{#2}
	\par \hspace{6pt} \textbullet \hspace{1pt} \fontfamily{pcr}\textup{#3}	

}

%--------------------------------------------------------------------------------------------------------------
% new an education environment:
\setlength{\tabcolsep}{0pt}
\newenvironment{edu}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}

\newcommand{\edut}[1]{\fontfamily{pcr}\textup{#1}}
\newcommand{\eduitem}[4]{%
  \hspace{5pt}\edut{#1}
  \hspace{0.5cm} \parbox[t]{11cm}{\edut{\textbf{#2}}
  \newline \edut{#3}
  \newline \edut{#4}
  \newline
  }\\}

%--------------------------------------------------------------------------------------------------------------
\newcommand{\expt}[1]{\fontfamily{pcr}\textup{#1}}
\newcommand{\expr}[5]{
	\par%
 \textbf{ \expt{#1},\expt{#2},\expt{#3},\expt{#4} } 
 \par\hspace{5pt}\parbox[t]{13cm}{ \expt{#5} } \newline
 }
%--------------------------------------------------------------------------------------------------------------
%projects layout:
\newcommand{\project}[4]{
\parbox[t]{3.5cm}{
	
	
	\begin{tikzpicture}
  \begin{scope}[blend group = soft light]
    \fill[red!30!white]   ( 90:1) circle (1.6);
    \fill[green!30!white] (210:1) circle (1.6);
    \fill[blue!30!white]  (330:1) circle (1.6);
  \end{scope}
	    \node  at (70:1.7) [text width=3cm]{#1};
	    \node at (230:1.05) [text width = 3cm]{#2};
	    \node at (340:1.85) [text width = 2cm] { #3};
	    \node {\textbf{#4}};
\end{tikzpicture}	
}
}
