clc;
clear;
fonksiyon =@(x) x.^3 + 5*x.^2 + 2*x-10;

min=1;
max=3;
hata=1e-3;

maksit=50;

for i=1:maksit
    if fonksiyon(min)*fonksiyon(max)<0
        m=(min+max)/2;
        if fonksiyon(m)*fonksiyon(max)<0
            min=m;
        else
            max=m;
        end
            x(i)=m;
            fx(i)=fonksiyon(m);

            er(i)=max-min;
            
            if(i>1) && (abs(er(i)-er(i-1))<hata)
                break
            end
    end
end
    
    iter=1:1:i;
    x=x(1,1:i);
    fx=fx(1,1:i);
            
        table=[iter;x;fx;er];
fprintf('\n\n   \t\tx \t\t\t\tf(x) \t\t\t\tKök Aralýðý\n')
fprintf('%2.0f \t\t%2.3f \t\t\t%2.3f \t\t\t\t%2.3f \n',table)