function [tr, yr] = eulero_imp_l(A, g, tspan, y0, N)
%EULERO_IMPLICITO_LINEARE Metodo di Eulero implicito lineare
    tr = linspace(tspan(1), tspan(2), N+1);
    h = (tspan(2)-tspan(1))/N;
    yr = zeros(length(y0), N+1);
    yr(:,1) = y0;
    [L,U] = lu(eye(size(A))-h*A);
    for i = 1:N
        yr(:,i+1) = L\ (U \ (yr(:,i)+h*g(tr(i+1))));
    end
end
