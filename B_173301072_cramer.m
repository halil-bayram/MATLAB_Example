clc
clear

B = [2  1 -2;
     1  -2  1;
     1  3  -2];
 
X = [0;
     5;  
     -3];
 
for(i = 1:length(B))
    Z = B;
    Z(1:end,i) = X;
    deger(i) = det(Z)/det(B);
end
deger