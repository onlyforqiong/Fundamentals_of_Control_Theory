G = tf([1],[5 1 0]);
t1 = linspace(0,50,500);
t2 = linspace(0,50,2500);
t3 = linspace(0,50,2500);

H1 = G*5;
H2 = G * tf(4,5);
H3_1 = 5*tf([1],[5,1]);
H3_2 = feedback(H3_1,0.8);
H3 = H3_2 * tf([1],[1,0]);

sys1 = feedback(H1,1);
sys2 = feedback(H2,1);
sys3 = feedback(H3,1);

t1 = linspace(0,50,500);
t2 = linspace(0,50,2500);
t3 = linspace(0,50,2500);

y1 = step(sys1,t1);
y2 = step(sys2,t2);
y3 = step(sys3,t3);
subplot(3,1,1);
plot(t1,y1);
subplot(3,1,2);
plot(t2,y2);
subplot(3,1,3);
plot(t3,y3);
stepinfo(y1,t1)
stepinfo(y2,t2)
stepinfo(y3,t3)
hold on;
