function p3 = newtonsDiv(x,y,T)
    len = length(x);
    Q = ones(len);
    for i = 1:len
        Q(i,1) = y(i);
    end
    for i = 2:len
        for j = i:len
            Q(j,i) = (Q(j,i-1)-Q(j-1,i-1))/(x(j)-x(j-i+1));
        end
    end
    p3 = 0;
    for i = 1:len
        product = 1;
        for j = 1:i-1
            product = product*(10-x(j));
        end
        Q(i,i) = product*Q(i,i);
        p3 = Q(i,i)+p3;
    end
end