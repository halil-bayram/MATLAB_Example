clear
clc

a=[1 2 3; 4 5 6; 7 8 9];
b=[0 0 0; 0 0 0; 0 0 0];
for i=1:3
    for j=1:3
        b(i,j)=a(j,i);
    end
end
