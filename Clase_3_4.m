clear all, close all, clc
a=imread('Texto.PNG');
figure(1);imshow(a);impixelinfo
b=rgb2gray(a);
b(b<254)=0;
figure(2);imshow(b);impixelinfo
c=b';d=sum(c);
figure(3);imshow(c)
figure(4);plot(d)
figure(5);imshow(a(5:23,:,:));
e=b(5:23,:);
f=sum(e);
figure(6);plot(f)
figure(7);imshow(a(5:23,21:67,:))
