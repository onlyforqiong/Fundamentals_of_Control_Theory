
% 建立传递函数模型
num = [2 18  40];
den = [1 5  8 6];
G = tf(num, den)

% 建立零极点增益模型
[z, p, k] = tf2zp(num, den)

% 建立状态空间方程模型
[A, B, C, D] = tf2ss(num, den)

% 绘制零极点图
pzmap(G)