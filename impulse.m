k1=-15;
k2=15;
k=k1:k2;
x=(k==0);
y=(k>=0);

% Plot the functions
figure;
% Subplot for Unit Impulse Function
subplot(2, 1, 1);
stem(k,x);
xlabel('k')
ylabel('\delta_k')
title("Unit Impulse Sequence");
axis([k1 k2 -1 1.1]);
hold on;
% Subplot for Unit Step Function
subplot(2, 1, 2);
stem(k,y);
xlabel('k')
ylabel('u_k')
title("Unit Step Sequence");
axis([k1 k2 -1 1.1]);
hold off;
grid on;

