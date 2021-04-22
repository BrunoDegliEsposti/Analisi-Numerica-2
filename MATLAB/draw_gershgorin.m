function [] = draw_gershgorin(A)
%DRAWGERSHGORIN Disegna i cerchi di Gershgorin di A
    [m,n] = size(A);
    if m ~= n
        error('La matrice non è quadrata!');
    end
    hold on;
    grid on; axis equal;
    for i = 1:n
        draw_circle(real(A(i,i)), imag(A(i,i)), ...
                    min(sum(abs(A(i,:)))-abs(A(i,i)), ...
                        sum(abs(A(:,i)))-abs(A(i,i))));
    end
    e = eig(A);
    plot(real(e), imag(e), '*b');
    hold off;
end

