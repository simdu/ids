function J = ObjectiveFunctionOutputError(theta, u, ym, t)
a1 = theta(1,1);
b1 = theta(2,1);

% Number of measurments N
N = length(ym);

%Start conditon for simulation value qual to first measurment
y_hat(1, 1) = ym(1);

%Differen equ (for loop)
for iterk = 2:N
    y_hat(iterk, 1) = -a1 * y_hat(iterk-1, 1) + b1 * u(iterk-1);
end

figure(1);
plot(t, ym,'x', t, y_hat, '+');
title('Output Error fitting');
%residual
e = ym - y_hat;

figure(2);

plot(t, e,'x');
title('Output Error Residuals');
%Objetice funtion computation
J = e' * e;
J=sqrt(J/N);