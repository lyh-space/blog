% Author: Li Yuhao
% Homepage: https://lyhspace.com/
% Email: liyh536@mail2.sysu.edu.cn
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

\ProvidesClass{MPEtemplate}[Template of Modern Physics Experiment Report by Li Yuhao]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}

% 用到的宏包
\RequirePackage{xcolor}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[bottom]{footmisc}
\RequirePackage{indentfirst}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{hyperref}
% 参考文献和附录
\RequirePackage[style=gb7714-2015]{biblatex}
\addbibresource{reference.bib}
\def\refname{参考文献}
\RequirePackage{appendix}
\newcommand\beginAppendix{
\newpage
\renewcommand{\appendixpagename}{\zihao{3}附录}
\appendix
\appendixpage
}
% 页边距
\RequirePackage[
  left=3cm,
  right=3cm,
  top=3cm,
  bottom=3cm,
  headheight=0pt,
  headsep=5pt
]{geometry}

% 颜色
\definecolor{maincolor}{rgb}{0.5,0,0}

% 图表
\graphicspath{{image/}{figure/}{fig/}{img/}}
\RequirePackage{float}
\RequirePackage{caption}
\captionsetup{font=small,labelfont=bf}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=5pt}
\renewcommand\figurename{图}
\renewcommand\tablename{表}

% 超链接
\hypersetup{
  pdfborder={0 0 0},
  colorlinks=true,
  linkcolor={maincolor},
  urlcolor={maincolor},
  filecolor={maincolor},
  citecolor={maincolor},
  linktoc=all
} 
\newcommand\email[1]{\href{mailto:#1}{\nolinkurl{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 字体设置
\RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}
% 英文字体
\setmainfont{TeX Gyre Termes}
\setsansfont{Arial}
\setmonofont{Consolas}
% 中文字体
\setCJKmainfont{FZShuSong-Z01}[BoldFont={Source Han Serif SC SemiBold},AutoFakeSlant]
\setCJKsansfont{FZHei-B01}[BoldFont={Source Han Sans SC Medium}]
\setCJKmonofont{FZFangSong-Z02}

\newCJKfontfamily\songti{FZShuSong-Z01}[BoldFont={Source Han Serif SC SemiBold}]
\newCJKfontfamily\BoldSong{Source Han Serif SC Bold}
\newCJKfontfamily\HeavySong{Source Han Serif SC Heavy}
\newCJKfontfamily\heiti{FZHei-B01}[BoldFont={Source Han Sans SC Medium}]
\newCJKfontfamily\MediumHei{Source Han Sans SC Medium}
\newCJKfontfamily\BoldHei{Source Han Sans SC Bold}
\newCJKfontfamily\fangsong{FZFangSong-Z02}
\newCJKfontfamily\kaiti{FZKai-Z03}[AutoFakeBold]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 封面页
\makeatletter

\newcommand\CNtitle[1]{\newcommand{\@CNtitle}{#1}}
\newcommand\ENtitle[1]{\newcommand{\@ENtitle}{#1}}
\newcommand\CNauthor[1]{\newcommand{\@CNauthor}{#1}}
\newcommand\ENauthor[1]{\newcommand{\@ENauthor}{#1}}
\newcommand\CNdate[1]{\newcommand{\@CNdate}{#1}}
\newcommand\ENdate[1]{\newcommand{\@ENdate}{#1}}
\newcommand\CNaddress[1]{\newcommand{\@CNaddress}{#1}}
\newcommand\ENaddress[1]{\newcommand{\@ENaddress}{#1}}
\newcommand\CNabstract[1]{\newcommand{\@CNabstract}{#1}}
\newcommand\ENabstract[1]{\newcommand{\@ENabstract}{#1}}
\newcommand\CNkeyword[1]{\newcommand{\@CNkeyword}{#1}}
\newcommand\ENkeyword[1]{\newcommand{\@ENkeyword}{#1}}

\RequirePackage{abstract}
\renewcommand{\abstractname}{}
\setlength{\absleftindent}{0.5cm}
\setlength{\absrightindent}{0.5cm}
\setlength{\abstitleskip}{-1cm}
\renewcommand{\abstracttextfont}{\zihao{-4}\kaiti}

\def\@maketitle{%
  \newpage
  \null
  \begin{center}%
  \let \footnote \thanks
    {\zihao{-2}\bfseries \@CNtitle \par}%
    \vskip 1em%
    {\zihao{-4}\@CNauthor \par}%
    \vskip 0.5em%
    {\zihao{-4}\kaiti （\@CNaddress） \par}%
    \vskip 0.5em%
    {\zihao{-4}\kaiti \@CNdate}%
  \end{center}%
  \par
  \begin{abstract}
    \noindent{\heiti 摘~~要：}\@CNabstract\\
    {\heiti 关键词：}\@CNkeyword
  \end{abstract}
  \par
  \vskip 2em%
  \begin{center}%
    \let \footnote \thanks
      {\zihao{3}\bfseries \@ENtitle \par}%
      \vskip 1em%
      {\zihao{-4}\@ENauthor \par}%
      \vskip 0.5em%
      {\zihao{-4} \textit{\@ENaddress} \par}%
      \vskip 0.5em%
      {\zihao{-4} \@ENdate}%
    \end{center}%
    \par 
    \begin{abstract}
      \noindent{\bfseries Abstract:~~}\@ENabstract\\
      {\bfseries Keywords:~~}\@ENkeyword
      \end{abstract}  
}
\makeatother

\newcommand\maketitlepage{
  \maketitle
  \thispagestyle{empty}
  \newpage
  \pagenumbering{arabic}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 标题样式
\RequirePackage{titlesec}
\RequirePackage{titletoc}

\titleformat{\section}
{\zihao{4}\songti\bfseries}
{\bfseries\arabic{section}}
{1em}{}[]
\titleformat{\subsection}
{\zihao{-4}\kaiti\bfseries}%
{\bfseries\arabic{section}.%
  \bfseries\arabic{subsection}}
{1em}{}[]
\titleformat{\subsubsection}
{\zihao{-4}\heiti}
{\bfseries\arabic{section}.%
  \bfseries\arabic{subsection}.%
    \bfseries\arabic{subsubsection}}
{1em}{}[]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 代码样式
\RequirePackage{listings}
\lstset{
    basicstyle=\sffamily,
    keywordstyle=\bfseries,
    commentstyle=\rmfamily, 
    stringstyle=\ttfamily,
    flexiblecolumns,
    numbers=left,
    showspaces=false,
    numberstyle=\zihao{5}\ttfamily,
    showstringspaces=false,
    captionpos=t,
    frame=lrtb,
}
\lstdefinestyle{matlab}{
    language=Matlab,
    basicstyle=\zihao{5}\ttfamily,
    numberstyle=\zihao{5}\ttfamily,
    keywordstyle=\color{blue},
    keywordstyle=[2]\color{teal},
    stringstyle=\color{magenta},
    commentstyle=\color{gray},
    breaklines=true,
    columns=fixed,
    basewidth=0.5em,
}
\lstdefinestyle{python}{
    language=python,
    basicstyle=\zihao{5}\ttfamily,
    numberstyle=\zihao{5}\ttfamily,
    keywordstyle=\color{blue},
    keywordstyle=[2]\color{teal},
    stringstyle=\color{magenta},
    commentstyle=\color{gray},
    breaklines=true,
    columns=fixed,
    basewidth=0.5em,
    emph={self},
    emphstyle=\bfseries\color{magenta},
}
