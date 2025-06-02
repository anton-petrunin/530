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
%outputformat := "svg";

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



beginfig(15)
save u,p;
path p[];
u:=1cm;

z.x=(2,0)*u;
z.q=(1.2,2)*u;
z.o=origin;


drawarrow (-.5,0)*u--z.x;
drawarrow (0,-.5)*u--(0,2.3)*u;
draw z.o--z.q;

dOt z.q;

labelarcsprof(z.x, z.o, z.q, 18, 19, btex $\tfrac{\psi(x)}r$ etex);

label.rt(btex $\Theta(x)$ etex, z.q);
label(btex \scriptsize{$r\cdot\phi(x)$} etex rotated angle(z.q), z.q zscaled (.5,.08));

endfig;

beginfig(20)
save u,p;
path p[];
u:=.5cm;

p0=
((1+1/14),0)*u..(0,(1+1/13))*u..(-(1+1/12),0)*u..(0,-(1+1/11))*u..
((1+1/10),0)*u..(0,(1+1/9))*u..(-(1+1/8),0)*u..(0,-(1+1/7))*u..
((1+1/6),0)*u..(0,(1+1/5))*u..(-(1+1/4),0)*u..(0,-(1+1/2))*u..
(3-1,0)*u..(0,3-1/2)*u..(-(3-1/4),0)*u..(0,-(3-1/5))*u..
(3-1/6,0)*u..(0,3-1/7)*u..(-(3-1/8),0)*u..(0,-(3-1/9))*u..
(3-1/10,0)*u..(0,3-1/11)*u..(-(3-1/12),0)*u..(0,-(3-1/13))*u
..((3-1/14),0)*u;

draw subpath (4,20) of p0;
draw subpath (3,4) of p0 penhair dashed evenly scaled .5;
draw subpath (20,21) of p0 penhair dashed evenly scaled .5;
endfig;

end
