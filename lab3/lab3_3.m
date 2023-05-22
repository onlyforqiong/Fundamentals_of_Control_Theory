% ����ϵͳ�������ݺ���
num = [1];
den = [1, 4, 5, 0];
G = tf(num, den);

% (1) ���Ƹ��켣
figure;
rlocus(G);
title('���켣ͼ');

% (2) ����ʹϵͳ�ȶ���Kֵ��Χ��ʹϵͳ�޳�����Kֵ��Χ
zeta = 0.7;  % �����
wn = sqrt(5);  % ��ȻƵ��
K_stable = wn^3/(-1)^2;  % ʹϵͳ�ȶ���Kֵ
K_no_overshoot = 2*zeta*wn^3/sqrt(1-zeta^2);  % ʹϵͳ�޳�����Kֵ

% ������
fprintf('ʹϵͳ�ȶ���Kֵ��ΧΪ��K < %.2f��\n', K_stable);
fprintf('ʹϵͳ�޳�����Kֵ��ΧΪ��%.2f < K < %.2f��\n', 0, K_no_overshoot);

% ���Ƶ�λ��Ծ��Ӧ����
figure;
% ������������ݺ����ͱջ����ݺ���
K = K_no_overshoot;
C = tf(K, [1, 0]);
T = feedback(series(C, G), 1);

% ���Ƶ�λ��Ծ��Ӧ����
t = 0:0.01:10;
[y, t] = step(T, t);
figure;
plot(t, y, 'LineWidth', 2);
xlabel('ʱ��');
ylabel('��Ӧ');
title('��λ��Ծ��Ӧ����');

% ������
fprintf('ϵͳ�ķ�ֵ����Ϊ��%.2f%%��\n', (max(y) - 1) * 100);