function [] = draw_circle(x0, y0, radius)
%DRAWCIRCLE Disegna una circonferenza sul piano
    theta = 0:0.01:2*pi;
    X = x0 + radius*cos(theta);
    Y = y0 + radius*sin(theta);
    plot(X, Y, 'r');
end

