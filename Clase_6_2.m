clear all, close all, clc
a=imread('carro (1).jpg');a=imresize(a,0.2);[fil, col, cap]=size(a);
a=rgb2hsv(a);a=normaliza(a);
b=joint(a);
% b=rgb2gray(a);
c=b;
ee=strel('square',3)
for i=1:20
    b=imdilate(b,ee);
    c=imerode(c,ee);
    figure(1);imshow([b;c]);
    pause
end