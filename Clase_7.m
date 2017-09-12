clear all, close all, clc
a=imread('Figures.bmp');
b=bwmorph(~a,'skel',inf);
figure(1);imshow([a,b]);

original = imread('rice.png');
figure, imshow(original)
se = strel('disk',12);
tophatFiltered = imtophat(original,se);
figure, imshow(tophatFiltered)
contrastAdjusted = imadjust(tophatFiltered);
figure, imshow(contrastAdjusted)
    
original = imread('pout.tif');
se = strel('disk',3);
contrastFiltered = ...
    imsubtract(imadd(original,imtophat(original,se)),...
               imbothat(original,se));
           
figure, imshow(original)
figure, imagesc(imbothat(original,se));colormap(gray);
figure, imagesc(imtophat(original,se));colormap(gray);
figure, imshow(contrastFiltered)