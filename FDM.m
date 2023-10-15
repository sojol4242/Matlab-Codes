% Take euation from user
func_str = input('Enter the function to differentiate (e.g., @(x) x^2): ', 's');
x_value = input('Enter the value of x to calculate the derivative: ');
h = input('Enter the step size for forward difference method: ');

% Convert the function string to a function handle
func = str2func(func_str);

% Calculate the forward difference approximation of the derivative
derivative = (func(x_value + h) - func(x_value)) / h;

% Define a range of x values for plotting
x_range = x_value - 2 * h:0.01:x_value + 2 * h;

% Calculate the corresponding function values
y_func = func(x_range);

% Calculate the tangent line for the derivative at x_value
y_derivative = derivative * (x_range - x_value) + func(x_value);

% Plot the original function and its tangent line (derivative)
figure;
plot(x_range, y_func, 'b', 'DisplayName', 'f(x)');
hold on;
plot(x_range, y_derivative, 'r', 'DisplayName', 'f''(x)');
scatter(x_value, func(x_value), 75, 'g', 'filled', 'DisplayName', 'x_point');
hold off;
title('Forward Difference Mathod');
xlabel('x');
ylabel('f(x) and its Derivative');
legend('Location', 'Best');
grid on;

% Display the calculated derivative
fprintf('The approximate derivative at x = %.2f is: %.4f\n', x_value, derivative);
