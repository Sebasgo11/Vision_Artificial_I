close all, clear all, clc
a=imread('carro (1).jpg');
b=imresize(a,0.2);
[a1,a2,a3,a4,a5,a6,s,b,y]= componentes(b);
figure(1);imshow([a1;a2;a3]);impixelinfo;
figure(2);imshow([a4;a5;a6]);impixelinfo;
figure(3);imshow([s,b,y]);impixelinfo;
p1=max(s,b);p2=max(s,y);p3=max(b,y)
p4=max(p1,p2);p5=max(p2,p3);p6=max(p1,p3)
figure(4);imshow([p1,p2,p3]);impixelinfo;
figure(5);imshow([p4,p5,p6]);impixelinfo;

p11=min(s,b);p21=min(s,y);p31=min(b,y)
p41=min(p1,p2);p51=min(p2,p3);p61=min(p1,p3);d=[p21,p1];
figure(6);imshow([p11,p21,p31]);impixelinfo;
figure(7);imshow([p41,p51,p61]);impixelinfo;

figure(8);imshow(d);impixelinfo
c=impixel;
umbral=min(c(:));
d=[p21,p1];e=d;e(e<umbral)=0;e(e>0)=255;
figure(9);imshow([d;e]);impixelinfo