% using Monte Carlo
dots = 1000000;
dots_in = 0;
for i=1:dots
    x_rand = 4*rand()-2;
    y_rand = 2*rand()-1;
    z_rand = 6*rand()-3;
    if ( (x_rand.^2)./4 + (y_rand.^2)./1 + (z_rand.^2)./9 ) < 1
        dots_in = dots_in + 1;
    end
end

V_box = 4.*2.*6;
V_ellipsoid = V_box.*dots_in./dots;

fprintf('A total of %d random points are used and the volume of the ellipsoid is %.4f\n', dots, V_ellipsoid)