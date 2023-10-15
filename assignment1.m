% Define the time axis for each signal
t1 = linspace(-5, 5, 1000);   % for signal (a)
t2 = linspace(-10, 10, 1000); % for signal (b)
t3 = linspace(-5, 15, 1000);  % for signal (c)

% (a) x(t) = 5 sin(2πt) cos(π-8)
x1 = 5 * sin(2 * pi * t1) .* cos(pi - 8);

% (b) x2(t) = 5e^(-0.2t) * sin(2πt)
x2 = 5 * exp(-0.2 * t2) .* sin(2 * pi * t2);

% (c) x3(t) = e^(14-0.5t) * u(t)
x3 = exp(14 - 0.5 * t3) .* (t3 >= 0); % Define the unit step function u(t)

% Plot the signals 
figure;
% Subplot for problem (a)
subplot(3, 1, 1);
plot(t1, x1,'m');
title('Problem a: x(t) = 5 sin(2πt) cos(π-8)');
xlabel('Time (t)');
ylabel('A');
hold on;
% Subplot for problem (b)
subplot(3, 1, 2);
plot(t2, x2,'b');
title('Problem b: x2(t) = 5e^{-0.2t} sin(2πt)');
xlabel('Time (t)');
ylabel('A');
hold on;
% Subplot for problem (c)
subplot(3, 1, 3); 
plot(t3, x3,'g');
title('Problem c: x3(t) = e^{14-0.5t} u(t)');
xlabel('Time (t)');
ylabel('A');
hold off;
grid on;

