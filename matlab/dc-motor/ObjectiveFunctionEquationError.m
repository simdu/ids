function J = ObjectiveFunctionEquationError(theta, u, ym, t)
a1 = theta(1,1);
b1 = theta(2,1);

% Number of measurments N
N = length(ym);

% Observation matrix
phi = [-ym u];


%Start conditon for simulation value qual to first measurment
y_hat = zeros(N,1);
y_hat(1) = ym(1);

%equ 

y_hat(2:end) = phi(1:end-1, :) * theta;

figure(3);


plot(t, ym,'x', t, y_hat, '+');
title('Equation Error fitting');
%residual
e = ym - y_hat;

figure(4);
plot(t, e,'x');
title('Equation Error Residuals');
%Objetice funtion computation
J = e' * e;
J=sqrt(J/N);