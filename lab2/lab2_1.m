
% ��֪ǰ��ͨ·���ݺ��� G(s) = 8/(s^2 + 2s)
num = [8];
den = [1 2 0];
G = tf(num, den);
% ���ջ����ݺ���
Gc = feedback(G, 1);
% ���Ƶ�λ��Ծ��Ӧ����
step(Gc);
% �����̬����ָ��
stepinfo(Gc)
