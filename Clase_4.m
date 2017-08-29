clear all, close all, clc
a=imread('carro (1).jpg');
b=imresize(a,0.2);[fil, col, cap]=size(b);
figure(1);imshow(b);impixelinfo
c=rgb2hsv(b);
figure(2);imshow(c);impixelinfo
b1=reshape(b,[fil col*cap]);
c1=reshape(c,[fil col*cap]);c1=normaliza(c1);
figure(3);imshow([b1;c1]);impixelinfo