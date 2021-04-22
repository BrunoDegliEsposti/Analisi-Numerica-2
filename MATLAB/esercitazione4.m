%% Esercizio 2

f1 = @(t,y) -5*y;
err1 = zeros(5, 1);
figure(1); hold on;
for i = 1:5
    [tr, yr] = eulero_esp_s(f1, [0,1], 1, 10^i);
    plot(tr, yr);
    err1(i) = max(abs(yr - exp(-5*tr)));
end
plot(tr, exp(-5*tr));
hold off;

f2 = @(t,y) 5*y;
err2 = zeros(5, 1);
figure(2); hold on
for i = 1:5
    [tr, yr] = eulero_esp_s(f2, [0,1], 1, 10^i);
    plot(tr, yr);
    err2(i) = max(abs(yr - exp(5*tr)));
end
plot(tr, exp(5*tr));
hold off;

%% Esercizio 3

f1 = @(t,y) -y-5*exp(-t)*sin(5*t);
err1 = zeros(5, 1);
figure(1); hold on;
for i = 1:5
    [tr, yr] = eulero_esp_s(f1, [0,1], 1, 10^i);
    plot(tr, yr);
    err1(i) = max(abs(yr - exp(-tr).*cos(5*tr)));
end
plot(tr, exp(-tr).*cos(5*tr));
hold off;

f2 = @(t,y) exp(-t)+2*y;
err2 = zeros(5, 1);
figure(2); hold on
for i = 1:5
    [tr, yr] = eulero_esp_s(f2, [0,1], 2/3, 10^i);
    plot(tr, yr);
    err2(i) = max(abs(yr - (exp(2*tr)-exp(-tr)./3)));
end
plot(tr, exp(2*tr)-exp(-tr)./3);
hold off;

f3 = @(t, y) [y(2); y(2)*(y(2)-1)/y(1)];
err3 = zeros(5, 1);
figure(3); hold on
for i = 1:5
    [tr, yr] = eulero_esp_v(f3, [0,1], [1/2;-3], 10^i);
    plot(tr, yr(1,:));
    plot(tr, yr(2,:));
    err3(i) = max(abs(yr(1,:) - ((1+3*exp(-8*tr))./8)));
end
plot(tr, ((1+3*exp(-8*tr))./8));
plot(tr, -3*exp(-8*tr));
hold off;

%% Esercizio 4

g = @(t) [2*sin(t); 2*(cos(t)-sin(t))];
A = [-2,1;1,-2];
figure(1); hold on
for i = 1:5
    [tr, yr] = eulero_imp_l(A, g, [0,10], [2;3], 10^i);
    plot(tr, yr(1,:));
    plot(tr, yr(2,:));
end
hold off;





