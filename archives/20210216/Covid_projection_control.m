function [CumD,GDPLoss,alphapath,SimData,SimN] = Covid_projection_control(InitialValues,alpha_on,alpha_off,th_on,th_off,beta,gamma,delta,V,h,k,POP0,hconstant)
% Simulation for cumulative deaths and output loss given parameters

% - InitialValues = 1-by-4 vector of initial values: S, I, R, D
% - alpha_on is the target alpha with status of emergency
% - beta, gamma, delta and V are T-by-1 vectors of time-varying
% parameters
% - h, k are scalar parameters
% - T is a simulation period

T = length(beta);
SimData = zeros(T+1,length(InitialValues));
SimData(1,:) = InitialValues;
SimN = zeros(T,1);
alphapath = zeros(T,1);
alpha = alpha_on;
for i = 1:T
    alphapath(i) = alpha;
    if hconstant == 0
        SimN(i) = ((1 + h*alpha)^k)*beta(i)*SimData(i,1)*SimData(i,2)*(1/POP0);
    elseif hconstant == 1
        SimN(i) = ((1+(h(2)/h(1))*alpha)^k)*beta(i)*SimData(i,1)*SimData(i,2)*(1/POP0);
    end
    SimData(i+1,1) = SimData(i,1) - SimN(i) - V(i);
    SimData(i+1,2) = SimData(i,2) + SimN(i) - gamma(i)*SimData(i,2) - delta(i)*SimData(i,2);
    SimData(i+1,3) = SimData(i,3) + gamma(i)*SimData(i,2) + V(i);
    SimData(i+1,4) = SimData(i,4) + delta(i)*SimData(i,2);
    if hconstant == 0
        if th_on <= ((1 + h*alpha)^k)*beta(i)*SimData(i,1)*SimData(i,2)*(1/POP0)
            alpha = alpha_on;
        elseif th_off >= ((1 + h*alpha)^k)*beta(i)*SimData(i,1)*SimData(i,2)*(1/POP0)
            alpha = alpha_off;
        end
    elseif hconstant ==1
        if th_on <= ((1+(h(2)/h(1))*alpha)^k)*beta(i)*SimData(i,1)*SimData(i,2)*(1/POP0)
            alpha = alpha_on;
        elseif th_off >= ((1+(h(2)/h(1))*alpha)^k)*beta(i)*SimData(i,1)*SimData(i,2)*(1/POP0)
            alpha = alpha_off;
        end
    end
end
CumD = SimData(end,4);              % Cumulative deaths during the simulation period
GDPLoss = mean(alphapath);              % Average output loss during the simulation period
