% �������ݺ���ģ��
G1 = tf([2 6 5], [1 4 5 2])
G2 = tf([1 4 1], [1 9 8 0])
G3 = zpk([-3,-7], [-1,-4,-6], 5)
sys_tf = series(series(G1, G2), G3)

% ����ܴ��ݺ���
sys_tf