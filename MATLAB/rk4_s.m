function [tr, yr] = rk4_s(f, tspan, y0, N)
%RUNGE_KUTTA_4_SCALARE Metodo di Runge Kutta di ordine 4 scalare
    tr = linspace(tspan(1), tspan(2), N+1);
    h = (tspan(2)-tspan(1))/N;
    yr = zeros(size(tr));
    yr(1) = y0;
    for i = 1:N
        K1 = f(tr(i),     yr(i));
        K2 = f(tr(i)+h/2, yr(i)+(h/2)*K1);
        K3 = f(tr(i)+h/2, yr(i)+(h/2)*K2);
        K4 = f(tr(i)+h,   yr(i)+h*K3);
        yr(i+1) = yr(i) + (h/6)*(K1+2*(K2+K3)+K4);
    end
end
