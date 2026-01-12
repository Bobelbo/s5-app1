g = 9.81;
a = g*0.6;
vMax = 111.11;
t1 = vMax/a;
dTot = 10000;
d1 = (a*t1^2)/2;
d2 = dTot - 2*d1;
t2 = d2 / vMax;
tAcc = linspace(0, t1, 1000);
tConst = linspace(t1, t1+t2, 1000);
tDec = linspace(t1 + t2, t1 + t2 + t1, 1000);


d1 = (a*t.^2)/2;
v1 = a*tAcc;
v2 = vMax + 0*tConst;
v3 = -a*(tDec - t1 - t2) + vMax;


h = figure;
subplot(3, 1, 1);
plot(tAcc, v1);
grid on;
title('Velocity vs Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');

subplot(3, 1, 2);
plot(tConst, v2);
grid on;
title('Velocity vs Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');

subplot(3, 1, 3);
plot(tDec, v3);
grid on;
title('Velocity vs Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
