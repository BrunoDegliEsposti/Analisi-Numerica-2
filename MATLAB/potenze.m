function [lambda, x, iter] = potenze(A, q0, tol, maxit)
%POTENZE Calcolo di autovalori con il metodo delle potenze
    q0 = q0/norm(q0);
    x = A*q0;
    lambda = q0'*x;
    for k = 1:maxit
        iter = k;
        q0 = x/norm(x);
        x = A*q0;
        lambda_old = lambda;
        lambda = q0'*x;
        if norm(lambda-lambda_old) < tol
            break;
        end
    end
end

