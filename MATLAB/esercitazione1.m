%#ok<*ASGLU>
%% Esercizio 2
A = [1,-1,2; -2,0,5; 6,-3,6];
tol = 1e-8;
maxit = 100;
q0 = [1;1;1];
x1 = [5;16;18];
x2 = [1;6;4];
x3 = [1;2;0];
%[lambda, x, iter] = potenze(A, q0, tol, maxit);
%[lambda, x, iter] = potenze(A, x2+x3, tol, maxit);
%[lambda, x, iter] = potenze(A, x2+1e-8, tol, maxit);
[lambda, x, iter] = potenze_inv(A-2.5*eye(3), q0, tol, maxit);
% troviamo l'autovalore 3 sfruttando inv e shift: (1/2)+2.5 = 3

%% Esercizio 3
A = [8,-1,-5; -4,4,-2; 18,-5,-7];
[lambda, x, iter] = potenze(A, [1;1;1], 1e-8, 1000);

%% Esercizio 4

A = [ 1,2,-1; ...
      2,7, 0; ...
     -1,0,-5];
draw_gershgorin(A);
B = [0,1,0; ...
     0,0,1; ...
     2,1,1];
draw_gershgorin(B);

%% Esercizio 6

A = [1,1,1,1; 1,2,2,2; 1,2,3,3; 1,2,3,4];
A = QR_autovalori(A, 1e-10, 30);
B = [15,-2,2; 1,-10,-3; -2,1,0];
B = QR_autovalori(B, 1e-10, 60);
C = [6,2,3,4; 7,8,3,4; 1,2,3,4; 1,9,0,10];
C = QR_autovalori(C, 1e-10, 30);
D = C(2:3,2:3);
r = roots([1,-D(1,1)-D(2,2),det(D)]);



