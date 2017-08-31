close all, clear all, clc;
a=imread('placa_bw.bmp');a=uint8(a);
[l,n]=bwlabel(a);
areat=[];
figure(1);imshow(a);
figure(2);imagesc(l);colormap(copper);impixelinfo;
for i=1:n
    b=a*0;
    b(l==i)=1;
    area=sum(b(:));
    if(area>1000)
        maxi=i;
        figure(3);imshow(b*255);impixelinfo
        title(['Objeto = ',num2str(i),' Area = ',num2str(area)])
        pause
    end
    areat=[areat,area];
end
figure,plot(areat)
[x,y]=find(l==maxi);
x_min=min(x(:));
x_max=max(x(:));
y_min=min(y(:));
y_max=max(y(:));

aa=imread('carro (1).jpg');aa=imresize(aa,0.2);
bb=aa(x_min:x_max,y_min:y_max,:);
figure,imshow(bb)
