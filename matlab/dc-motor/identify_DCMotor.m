close all;
clear all;


K = 999:0.05:1001;
tau = 0.15:0.05:0.25;

minJ_oe = 1e7;
minJ_ee = 1e7;
T = 0.01;

uk = u;
yk = w_p;
tk = t;

for indexK = 1:length(K)
    for indexTau = 1:length(tau)
        a1 = -exp(-T/tau(indexTau));
        b1 = K(indexK) *(1+a1);
        theta = [a1;b1];
        J_oe(indexK, indexTau) = ObjectiveFunctionOutputError(theta, uk, yk, tk);
        J_ee(indexK, indexTau) = ObjectiveFunctionEquationError(theta, uk, yk, tk);
        if J_oe(indexK, indexTau) < minJ_oe
            minJ_oe = J_oe(indexK, indexTau);
            K_opt_oe = K(indexK);
            tau_opt_oe = tau(indexTau);
            theta_opt_oe = [a1; b1];
        end
        if J_ee(indexK, indexTau) < minJ_ee
            minJ_ee = J_oe(indexK, indexTau);
            K_opt_ee = K(indexK);
            tau_opt_ee = tau(indexTau);
            theta_opt_ee = [a1; b1];
        end
    end
end

ObjectiveFunctionOutputError(theta_opt_oe, uk, yk, tk)
ObjectiveFunctionEquationError(theta_opt_oe, uk, yk, tk);

%Simulate Modell 
G = K/(1+ tau * s);
% Discretizazion
H = c2d(G, T, 'zoh');
%Simulation
y = lsim(H, u, t);
