input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(5)
save u,p;
path p[];
u:=1.4cm;

p0=(0,0)*u--(0,1)*u--(1,1)*u--(1,0)*u--cycle;
draw p0;

label.lft (btex $A$ etex, point .5 of p0);
label.top (btex $B$ etex, point 1.5 of p0);
label.rt (btex $A'$ etex, point 2.5 of p0);
label.bot (btex $B'$ etex, point 3.5 of p0);

endfig;

end
