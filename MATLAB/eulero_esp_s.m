function [tr, yr] = eulero_esp_s(f, tspan, y0, N)
%EULERO_ESPLICITO_SCALARE Metodo di Eulero esplicito scalare
    tr = linspace(tspan(1), tspan(2), N+1);
    h = (tspan(2)-tspan(1))/N;
    yr = zeros(size(tr));
    yr(1) = y0;
    for i = 1:N
        yr(i+1) = yr(i) + h*f(tr(i), yr(i));
    end
end

