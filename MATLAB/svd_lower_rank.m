function [A] = svd_lower_rank(A, k)
%SVD_LOWER_RANK Migliore appross. di rango k della matrice A in ingresso
    [U,S,V] = svd(A, 0);
    [n,~] = size(S);
    for i = k+1:n;
        S(i,i) = 0;
    end
    A = U*S*V';
end

