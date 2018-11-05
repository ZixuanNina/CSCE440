function p3 = lagrangeinterpolating(x,y,T)
    len = length(x);
    i = 1;
    L = ones(len);
    p3 = 0;
    while(i <= len)
         j = 1;
        while(j <= len)
           if(i == j)
               j = j + 1;
                continue;
           end
           L(i) = L(i)*((T - x(j))/(x(i) - x(j)));
           j = j + 1;
        end
        p3 = L(i)*y(i) + p3;
        i = i + 1;
    end
end