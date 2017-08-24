clear all, close all, clc
a= videoinput('winvideo', 1);
%preview(a)
valor=[];
for i=1:10
    b=getsnapshot(a);b=imresize(b,0.2);
    %figure(1);imshow(b)
    c=getsnapshot(a);c=imresize(c,0.2);
    d=b-c;valor=[valor,sum(d(:))];
    figure(1);imshow(d);
    pause(0.01)
end

figure(2);plot(valor)
