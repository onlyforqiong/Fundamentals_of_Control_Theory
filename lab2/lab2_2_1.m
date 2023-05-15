W = 6;
a = [0.1, 0.2, 0.707, 1.0, 2.0];
w = [1, 3, 5];
t = 0:0.01:10;
for i = 1:length(a)
    G = tf(W^2,[1, 2*a(i)*W, W^2]);
    y = step(G,t);
    plot(t,y);
    hold on;
end
for i = 1:length(w)
    G = tf(w(i)^2,[1, 2*a*W, w(i)^2]);
    y = step(G,t);
    plot(t,y);
    hold on;
end
title('单位阶跃响应');
xlabel('时间/s');
ylabel('幅值');
legend('a=0.1','a=0.2','a=0.707','a=1.0','a=2.0','w=1','w=3','w=5');

