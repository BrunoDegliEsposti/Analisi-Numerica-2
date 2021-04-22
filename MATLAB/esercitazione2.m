%% Esercizio 1

A = [1,2; 3,4; 5,6; 7,8];
[U,S,V] = svd(A);
[Ur,Sr,Vr] = svd(A,0);

%% Esercizio 2

s1 = svd(A);
s2 = eig(A*A');
diff = s1.^2 - flip(s2(3:4));

%% Esercizio 3

B = rand(1000, 800);
k = 200;
B2 = svd_lower_rank(B, k);
err = svd(B);
err = err(k+1);
err2 = norm(B-B2);
norm(err-err2)


