
clc,clear, close all
load ws_homework_4.mat

mass = 1.1;
Ib = diag([1.2416 1.2416 2*1.2416]); 

Ts=0.001;




wn1=80;
wn2=80;
wn3=77;
wn4=90;
wn5=103;

s = tf('s')
G1 = wn1/(s+wn1);
%bode(G1)
bandwidth(G1)
k11=wn1;

 G2 = wn2^2/(s^2+1.4*wn2*s+wn2^2);
%  bode(G2)
 bandwidth(G2)

k22=1.4*wn2;
k12=wn2^2/k22;

 G3 = wn3^3/(s^3+1.75*wn3*s^2+2.15*wn3^2*s+wn3^3);
% bode(G3)
 bandwidth(G3)
k33=1.75*wn3;
k23=2.15*wn3^2/k33;
k13=wn3^3/k33/k23;

G4 = wn4^4/(s^4+2.1*wn4*s^3+3.4*wn4^2*s^2+2.7*wn4^3*s+wn4^4);
 %bode(G4)
 bandwidth(G4)
k44=2.1*wn4;
k34=3.4*wn4^2/k44;
k24=2.7*wn4^3/k34/k44;
k14=wn4^4/k24/k34/k44;

G5 = wn5^5/(s^5+2.8*wn5*s^4+5*wn5^2*s^3+5.5*wn5^3*s^2+3.4*wn5^4*s+wn5^5);
% bode(G5)
 bandwidth(G5)
k55=2.8*wn5;
k45=5*wn5^2/k55;
k35=5.5*wn5^3/k55/k45;
k25=3.4*wn5^4/k35/k45/k55;
k15=wn5^5/k25/k35/k45/k55;


