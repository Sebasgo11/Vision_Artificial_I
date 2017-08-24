clear all, close all, clc
a=imread('Lenna.png');
b=rgb2gray(a);
figure(1);imshow(b);impixelinfo
figure(2);imhist(b)
c=imhist(b);
figure(3);plot(c)
d=b;d(d<100)=0;d(d>150)=0;d(d>0)=255;
figure(4);imshow(d)
figure(5);imhist(d)