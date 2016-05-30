function[v] = get_v_1_e(t)
    e = exp(1);
    v =  abs( -20.*e.^(-0.01.*t.*t).*sin(20.*pi.*t + 2.*pi./5) );
end