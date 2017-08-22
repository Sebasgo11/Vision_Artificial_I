clear all; close all;  clc
a=imread('escudo.jpg');
figure(1);imshow(a);impixelinfo
b=rgb2gray(a);
figure(2);imshow(b);impixelinfo
[fil, col, cap]=size(b);
c=[b,b,b];figure(3);imshow(c)
d=reshape(c,[fil col 3]);
figure(4);imshow(d);impixelinfo
