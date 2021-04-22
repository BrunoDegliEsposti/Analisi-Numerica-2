function [A] = QR_autovalori(A, tolla, maxit)
%QR_AUTOVALORI Metodo QR per gli autovalori
    for k = 1:maxit
        [Q,R] = qr(A);
        A = R*Q;
        if norm(tril(A,-1),+inf) < tolla
            break;
        end
    end
end

