clear all, close all, clc
a=imread('Figures.bmp');b=imread('Figures2.bmp');
ee=strel('square',3);
%%
b=imerode(a,ee);
c=a-b;
figure(1);imshow(c);

%%
% c=[a,b];
% d=imclose(c,ee);
% e=imopen(c,ee);
% figure(1);imshow([d;e]);
%%
% for i=1:10
%     a=imdilate(a,ee);
%     b=imdilate(b,ee);
%     figure(1);imshow([a,b]);
%     pause(1)
% end
% 
% for i=1:10
%     a=imerode(a,ee);
%     b=imerode(b,ee);
%     figure(1);imshow([a,b]);
%     pause(1)
% end