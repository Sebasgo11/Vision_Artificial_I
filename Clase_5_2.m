clear all, close all, clc
a=imread('placa_bw.bmp');
b=imclearborder(a);
figure(1);imshow([a,b]);
c=bwareaopen(b,1000);
figure(2);imshow(c)