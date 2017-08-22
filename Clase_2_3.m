clear all; close all;  clc
a=imread('im1.jpg');
b=imread('im2.jpg');
[fil, col, cap]=size(a);
c=imresize(b,[fil col]);
% d=(a+c)/2; %Truncado(Saturación)
% e=a/2+c/2;
% figure(1);imshow([d,e]);impixelinfo

vidObj = VideoWriter('landscape.avi');
open(vidObj);
    
for i=0:0.01:1
    f=a*i+c*(1-i);
    figure(2);imshow(f)
    currFrame = getframe;
    writeVideo(vidObj,currFrame);
    pause(0.01)
end

for i=1:-0.01:0
    f=a*i+c*(1-i);
    figure(2);imshow(f)
    currFrame = getframe;
    writeVideo(vidObj,currFrame);
    pause(0.01)
end

close(vidObj);

