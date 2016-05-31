% (a)
e = exp(1);

t = 0:35;
v = -20.*e.^(-0.01.*t.*t).*sin(20.*pi.*t + 2.*pi./5);
plot(t,v)
xlabel('t')
ylabel('v')

% (b)
h = 10.^(-8);
a = ( -20.*e.^(-0.01.*(t+h).*(t+h)).*sin(20.*pi.*(t+h) + 2.*pi./5)...
- (-20.*e.^(-0.01.*t.*t).*sin(20.*pi.*t + 2.*pi./5)) )./h;
F = a.*5;
plot(t,F)
xlabel('t')
ylabel('F')

% (c)
% t = 8 to get F(8)
F_8 = ( -20.*e.^(-0.01.*(8+h).*(8+h)).*sin(20.*pi.*(8+h) + 2.*pi./5)...
- (-20.*e.^(-0.01.*8.*8).*sin(20.*pi.*8 + 2.*pi./5)) )./h.*5;
fprintf('F(8) = %.2f N\n', F_8)

% (d)
% x(10) is approximately equal to integration of v(t)|(10-h)~(10+h)
h = 10.^(-6);
v_1 = -20.*e.^(-0.01.*(10-h).*(10-h)).*sin(20.*pi.*(10-h) + 2.*pi./5);
v_2 = -20.*e.^(-0.01.*(10+h).*(10+h)).*sin(20.*pi.*(10+h) + 2.*pi./5);
x_10 = (v_1 + v_2).*(2.*h)./2;
fprintf('x(10) = %.11f m\n', x_10)

% (e)
% the distance should be abs-val of integration of v(t)|0~10
distance = get_sum_1_e(0,10,10000);
fprintf('The total travel length from t = 0 to 10 is %.6f m\n', distance)