K = [1.2, 2.25, 4];
t = 0:0.01:10;
for i = 1:length(K)
    G = tf(K(i),[0.5, 1])*tf(1,[4, 1]) * tf(1,[1,0]);
    y = step(G,t);
    plot(t,y);
    hold on;
end
title('单位阶跃响应');
xlabel('时间/s');
ylabel('幅值');
legend('K=1.2','K=2.25','K=4');
