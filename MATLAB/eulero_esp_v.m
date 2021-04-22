function [tr, yr] = eulero_esp_v(f, tspan, y0, N)
%EULERO_ESPLICITO_VETTORIALE Metodo di Eulero esplicito vettoriale
    tr = linspace(tspan(1), tspan(2), N+1);
    h = (tspan(2)-tspan(1))/N;
    yr = zeros(length(y0), N+1);
    yr(:,1) = y0;
    for i = 1:N
        yr(:,i+1) = yr(:,i) + h*f(tr(i), yr(:,i));
    end
end
