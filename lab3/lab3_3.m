% 定义系统开环传递函数
num = [1];
den = [1, 4, 5, 0];
G = tf(num, den);

% (1) 绘制根轨迹
figure;
rlocus(G);
title('根轨迹图');

% (2) 分析使系统稳定的K值范围和使系统无超调的K值范围
zeta = 0.7;  % 阻尼比
wn = sqrt(5);  % 自然频率
K_stable = wn^3/(-1)^2;  % 使系统稳定的K值
K_no_overshoot = 2*zeta*wn^3/sqrt(1-zeta^2);  % 使系统无超调的K值

% 输出结果
fprintf('使系统稳定的K值范围为：K < %.2f。\n', K_stable);
fprintf('使系统无超调的K值范围为：%.2f < K < %.2f。\n', 0, K_no_overshoot);

% 绘制单位阶跃响应曲线
figure;
% 定义控制器传递函数和闭环传递函数
K = K_no_overshoot;
C = tf(K, [1, 0]);
T = feedback(series(C, G), 1);

% 绘制单位阶跃响应曲线
t = 0:0.01:10;
[y, t] = step(T, t);
figure;
plot(t, y, 'LineWidth', 2);
xlabel('时间');
ylabel('响应');
title('单位阶跃响应曲线');

% 输出结果
fprintf('系统的峰值超调为：%.2f%%。\n', (max(y) - 1) * 100);