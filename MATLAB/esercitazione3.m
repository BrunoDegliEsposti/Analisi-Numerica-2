%#ok<*ASGLU>
%#ok<*MINV>
%#ok<*NASGU>
%% Esercizio 1.1

A = [1,2,2; 7,6,10; 4,4,6; 1,0,1];
b = [6; 6; 8; 3];

x1 = A\b;
[Q,R,P] = qr(A);
y = P*(R\(Q'*b));
nx1 = norm(x1);
r1 = b-A*x1;
nr1 = norm(r1);

x2 = pinv(A)*b;
nx2 = norm(x2);
r2 = b-A*x2;
nr2 = norm(r2);

%% Esercizio 1.2

A = [3,-1,0,1; 2,1,1,-1];
b = [-7; 3];

x1 = A\b;
[Q,R,P] = qr(A);
y = P*(R\(Q'*b));
nx1 = norm(x1);
r1 = b-A*x1;
nr1 = norm(r1);

x2 = pinv(A)*b;
nx2 = norm(x2);
r2 = b-A*x2;
nr2 = norm(r2);

%% Esercizio 2

A = [1,2,2; 7,6,10; 4,4,6; 1,0,1];
[Q1,R1] = qr(A);
[Q2,R2,P] = qr(A);
r = rank(A);

%% Esercizio 3

A = hilb(10);
A = A(:,1:5);
P = pinv(A);

r1 = norm(A*P*A-A);
r2 = norm(P*A*P-P);
r3 = norm((A*P)'-(A*P));
r4 = norm((P*A)'-(P*A));
r5 = norm(P-inv(A'*A)*A');







