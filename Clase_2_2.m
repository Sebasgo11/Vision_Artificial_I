clear all; close all;  clc
a=imread('im1.jpg');
figure(1);imshow(a);impixelinfo
% b=rgb2gray(a);
b=a;
figure(2);imshow(b);impixelinfo
for i=1:10:50
    c=b-i;
    figure(3);imshow(c);impixelinfo;
    pause(1)
end
d=255-b;
figure(4);imshow(d)