opt=odeset('OutputSel',[1 2], 'OutputFcn', 'odephas2');
[t, h] = ode45(@mops, [0, 10], [1, 1], opt);
figure
plot(t,h(:,1), 'r', t, h(:,2), 'g')
xlabel("Time", 'FontSize',18)
ylabel("M(t) and N(t)", 'FontSize',18)
legend('M(t)', 'N(t)')