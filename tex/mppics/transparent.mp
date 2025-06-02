input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex


prologues:=3;
setarrows(barbedsharp);
linecap:=butt;


outputformat := "svg";
outputtemplate := "pic-%c.svg";

beginfig(10)
%run mpost, open svg file in incscape, edit alpha-chanel for each color, save as pdf.
save u,p;
path p[];
u:=3.2cm;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.c=(.4,.8)*u;
z.m=(z.a+z.b+z.c)/3;



p1=z.a--.4[z.a,z.b]{(z.b-z.a) zscaled (0,1)}.. .7[z.a,z.m].. {(z.c-z.a) zscaled (0,1)}.4[z.a,z.c]--cycle;
p2=z.b--.4[z.b,z.c]{(z.c-z.b) zscaled (0,1)}.. .7[z.b,z.m].. {(z.a-z.b) zscaled (0,1)}.4[z.b,z.a]--cycle;
p3=z.c--.4[z.c,z.a]{(z.a-z.c) zscaled (0,1)}.. .7[z.c,z.m].. {(z.b-z.c) zscaled (0,1)}.4[z.c,z.b]--cycle;

p11=.2[z.c,z.b]{(z.c-z.b) zscaled (0,1)}..tension 2..1.1[z.a,z.m]..tension 2..{(z.b-z.c) zscaled (0,1)}.2[z.b,z.c]--cycle;
p12=.2[z.a,z.c]{(z.a-z.c) zscaled (0,1)}..tension 2..1.1[z.b,z.m]..tension 2..{(z.c-z.a) zscaled (0,1)}.2[z.c,z.a]--cycle;
p13=.2[z.b,z.a]{(z.b-z.a) zscaled (0,1)}..tension 2..1.1[z.c,z.m]..tension 2..{(z.a-z.b) zscaled (0,1)}.2[z.a,z.b]--cycle;

p21=.5[z.a,z.m]{(z.m-z.a) zscaled (0,-1)}..tension 2..(.5)[z.b,z.m]{(z.m-z.b) zscaled (0,-1)}..tension 2..(.5)[z.c,z.m]{(z.m-z.c) zscaled (0,-1)}..tension 2..cycle;

fill p1 withcolor red;
fill p2 withcolor red;
fill p3 withcolor red;

fill p11 withcolor green;
fill p12 withcolor green;
fill p13 withcolor green;

fill p21 withcolor blue;

draw z.a--z.b--z.c--cycle;
draw z.a--.5[z.b,z.c] penhair dashed evenly scaled .5;
draw z.b--.5[z.a,z.c] penhair dashed evenly scaled .5;
draw z.c--.5[z.b,z.a] penhair dashed evenly scaled .5;

Dot z.a,z.b,z.c,z.m,.5[z.a,z.b],.5[z.a,z.c],.5[z.c,z.b];

endfig;
end
