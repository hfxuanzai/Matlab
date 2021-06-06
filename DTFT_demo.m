clear;
clc;
close all;
%构建信号，长度为N%
N = 100;
n = [0:1:N-1];
xn = 0.1*cos(0.45*n*pi) + sin(0.3*n*pi) - cos(0.302*n*pi - pi/4);
%DTFT%
T = 1000;
w=[-T:1:T]*2*pi/T;
%-500 ~ 500 F0 = 2pi/1000%
martrix = w'.*n;
X = exp(-1i*(martrix))*xn';
% ======================= figure ==========================
subplot(311)
plot(n,xn);
title('原始信号');
subplot(312);
plot(w/pi,abs(X));
title('DTFT变换')