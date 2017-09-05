clear all, close all, clc
a=imread('carro (1).jpg');a=imresize(a,0.2);[fil, col, cap]=size(a);
b=joint(a);
c=b;
ee=strel('square',3);
for i=1:3
    b=imdilate(b,ee);b=reshape(b, [fil col cap]);
    c=imerode(c,ee);c=reshape(c, [fil col cap]);
    figure(1);imshow([b;c]);
    b=joint(b);
    c=joint(c);
    pause(1);
end
b=reshape(b, [fil col cap]);
imwrite(b,'yellow.bmp');
