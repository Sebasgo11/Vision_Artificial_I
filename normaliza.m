function b=normaliza(a)

b=double(a);
b=b/max(b(:));
b=b*255;
b=uint8(b);

end