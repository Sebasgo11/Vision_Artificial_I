clear all; close all;  clc
a=imread('colores-rgb.jpg');
figure; imshow(a);
r=a(:,:,1);g=a(:,:,2);b=a(:,:,3);
figure(1); subplot(2,2,1);imshow(a)
subplot 222; imshow(r);
subplot 223; imshow(g);
subplot 224; imshow(b); impixelinfo
r1=a;g1=a;b1=a;
r1(:,:,2:3)=0;
g1(:,:,1:2:3)=0;
b1(:,:,1:2)=0;
total=[a,r1;g1,b1];
figure(2);imshow(total);impixelinfo