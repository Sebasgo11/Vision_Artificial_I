function b=joint(a)
[fil, col, cap] = size(a);
b=reshape(a,[fil, col*cap]);
end