clear all, close all, clc
a=imread('Lenna.png');
b=rgb2gray(a);
c=histeq(b);
figure(1);subplot 221;imshow(b);
subplot 222; imhist(b);
subplot 223; imshow(c);
subplot 224; imhist(c);