function[sum] = get_sum_1_e(x1,x2,n)
    h = (x2-x1)./n;
    
    k = 0;
    sum_up = 0;
    for i=1:n
      sum_up = sum_up + get_v_1_e(x1+k.*h);
      k = k + 1;
    end
    sum_up = sum_up.*h;
    
    k = 1;
    sum_down = 0;
    for i=1:n
      sum_down = sum_down + get_v_1_e(x1+k.*h);
      k = k + 1;
    end
    sum_down = sum_down.*h;
    
    sum = (sum_up+sum_down)./2;

end