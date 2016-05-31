function[sum] = getSum_2_3(x1,x2,n)
    h = (x2-x1)./n;
    
    k = 0;
    sum_up = 0;
    for i=1:n
      sum_up = sum_up + getY_2_3(x1+k.*h);
      k = k + 1;
    end
    sum_up = sum_up.*h;
    
    k = 1;
    sum_down = 0;
    for i=1:n
      sum_down = sum_down + getY_2_3(x1+k.*h);
      k = k + 1;
    end
    sum_down = sum_down.*h;
    
    % Trapezoid is equal to (上和+下和)/2
    sum = (sum_up+sum_down)./2;

end