clear all, close all, clc
a=imread('casa.jpg');
for i=1:10:360
    a=imrotate(a,i,'crop','bicubic');
    figure(1);imshow(a);
    pause(0.01)
end
