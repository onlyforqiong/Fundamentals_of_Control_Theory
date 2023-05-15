
% 已知前向通路传递函数 G(s) = 8/(s^2 + 2s)
num = [8];
den = [1 2 0];
G = tf(num, den);
% 求解闭环传递函数
Gc = feedback(G, 1);
% 绘制单位阶跃响应曲线
step(Gc);
% 求解暂态性能指标
stepinfo(Gc)
