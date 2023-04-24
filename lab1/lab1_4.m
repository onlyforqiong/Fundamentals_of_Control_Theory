% 建立传递函数模型
G1 = tf([1], [1 1])
G2 = tf([1], [0.5 1])
G3 = tf([3],[1])

sys_par = parallel(G1, G2);
sys_ser = series(sys_par, G3);
G = sys_ser;
H = tf([1], [0.5 1]);
sys_cl = feedback(G, H)