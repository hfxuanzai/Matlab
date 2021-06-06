clear;
clc;
close all;
%构建信号，长度为N%
N = 1000;
n = [0:1:N-1];
k = [0:1:N-1];
xn = 0.1*cos(0.45*n*pi) + sin(0.3*n*pi) - cos(0.302*n*pi - pi/4);
%DFT%
X = exp(-1j*2*pi/N).^(n'*k)*xn';
% ======================= figure ==========================
subplot(311)
stem(n,xn);
title('原始信号');
subplot(312);
stem(k,abs(X));
title('DTFT变换')