
% �������ݺ���ģ��
num = [2 18  40];
den = [1 5  8 6];
G = tf(num, den)

% �����㼫������ģ��
[z, p, k] = tf2zp(num, den)

% ����״̬�ռ䷽��ģ��
[A, B, C, D] = tf2ss(num, den)

% �����㼫��ͼ
pzmap(G)