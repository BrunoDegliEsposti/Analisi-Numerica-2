%% Esercizio 1

f1 = @(t,y) -10*y;
f2 = @(t,y) -1000*y;
options = odeset('Refine', 1, 'Stats', 'on');
[t1, y1] = ode23(f1, [0,1], 1, options); % 88 valutazioni
err1 = max(abs(y1-exp(-10*t1)));
[t2, y2] = ode45(f1, [0,1], 1, options); % 79 valutazioni
err2 = max(abs(y2-exp(-10*t2)));
[t3, y3] = ode23(f2, [0,1], 1, options); % 1279 valutazioni
err3 = max(abs(y3-exp(-1000*t3)));
[t4, y4] = ode45(f2, [0,1], 1, options); % 1975 valutazioni
err4 = max(abs(y4-exp(-1000*t4)));

%% Esercizio 2

f1 = @(t,y) -10*y;
err = zeros(5, 2);
for i = 1:5
    [tr, yr] = rk4_s(f1, [0,1], 1, 2*10^i);
    err(i, 1) = max(abs(yr-exp(-10*tr)));
    [tr, yr] = eulero_esp_s(f1, [0,1], 1, 10^i);
    err(i, 2) = max(abs(yr-exp(-10*tr)));
end

%% Esercizio 3

f = @(t,y) -150*y;
A = -150;
g = @(x) 0;
[te1, ye1] = eulero_esp_s(f, [0,1], 1, 10);
[te2, ye2] = eulero_esp_s(f, [0,1], 1, 75);
[te3, ye3] = eulero_esp_s(f, [0,1], 1, 100);
[te4, ye4] = eulero_esp_s(f, [0,1], 1, 200);
[te5, ye5] = eulero_esp_s(f, [0,1], 1, 1000);
[ti1, yi1] = eulero_imp_l(A, g, [0,1], 1, 10);
[ti2, yi2] = eulero_imp_l(A, g, [0,1], 1, 75);
[ti3, yi3] = eulero_imp_l(A, g, [0,1], 1, 100);
[ti4, yi4] = eulero_imp_l(A, g, [0,1], 1, 200);
[ti5, yi5] = eulero_imp_l(A, g, [0,1], 1, 1000);
r = [ye1(end), ye2(end), ye3(end), ye4(end), ye5(end);
     yi1(end), yi2(end), yi3(end), yi4(end), yi5(end)];

 %% Esercizio 4
 
options = odeset('Refine', 1, 'Stats', 'on');
f1 = @(t,y) [-2, 1; 1, -2]*y + [2*sin(t); 2*(cos(t)-sin(t))];
f2 = @(t,y) [-2, 1; 998, -999]*y + [2*sin(t); 999*(cos(t)-sin(t))];
[t1, y1] = ode45(f1, [0,10], [2; 3], options);
[t2, y2] = ode45(f2, [0,10], [2; 3], options);
sol = @(t) [2*exp(-t)+sin(t), 2*exp(-t)+cos(t)];
err = [max(max(abs(y1-sol(t1)))), max(max(abs(y2-sol(t2))))];
% eig([-2, 1; 1, -2])     = -3,-1
% eig([-2, 1; 998, -999]) = -1000,-1
figure(1);
plot(t1, y1, 'o');
figure(2);
plot(t2, y2, 'o');

%% Esercizio Bonus

f = @(t,y) y;
[t, y] = rk4_s(f, [0,1], 1, 100);
[t2, y2] = rk4_s(f, [0,1], 1, 200);
ytilde = y2(3:2:end);
taustima = abs((-32/31)*(y(2:end)-ytilde));
tau = abs(exp(t(2:end))-y(2:end));





