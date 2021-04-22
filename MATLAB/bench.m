tic
f = @(t, y) [-2,1;1,-2]*y+[2*sin(t); 2*(cos(t)-sin(t))];
[tr1, yr1] = eulero_esp_v(f, [0,10], [2;3], 100000);
g = @(t) [2*sin(t); 2*(cos(t)-sin(t))];
A = [-2,1;1,-2];
[tr2, yr2] = eulero_imp_l(A, g, [0,10], [2;3], 100000);
toc