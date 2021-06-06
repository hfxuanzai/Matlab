Fs = 8000;      
x1 = audiorecorder(Fs,8,1);
disp('开始说话');
recordblocking(x1,10);        %录音10秒钟
play(x1);      %回放录音数据

figure(1);
subplot(211);
x2 = getaudiodata(x1);  %获取录音数据
plot(x2);        %做录音数据的时域图形
title('原始语音信号')
xlabel('采样点 n');
ylabel('音量 n');

y1=fft(x2); %做length(x1)点的FFT
y1=fftshift(y1); %频率分量将会移到坐标中心
subplot(212);
plot(abs(y1));%画出原始语音信号的频谱图，这里保证了x轴的点数必须和y轴点数一致
title('原始语音信号的频谱');
grid on;