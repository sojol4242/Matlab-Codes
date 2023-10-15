% Gauss-Jacobi Method for solving a system of linear equations

% Input the coefficient matrix A and the right-hand side vector b from the user
A = input('Enter the coefficient matrix A: ');
b = input('Enter the right-hand side vector b: ');

% Input the initial guess and the maximum number of iterations
x0 = input('Enter the initial guess x0: ');
maxIterations = input('Enter the maximum number of iterations: ');

% Initialize variables
n = length(b);
x = x0;
x_new = zeros(size(x));
error = zeros(maxIterations, 1);

% Perform Gauss-Jacobi iterations
for k = 1:maxIterations
    for i = 1:n
        x_new(i) = (b(i) - A(i, [1:i-1, i+1:n]) * x([1:i-1, i+1:n])) / A(i, i);
    end
    
    % Calculate the error for this iteration
    error(k) = norm(x_new - x, inf);
    
    % Update the solution vector
    x = x_new;
end

% Display the results
disp('Solution to the system of equations:');
figure;
bar(x);
title('Solution to the System of Equations With Gauss Jacobi Mathod');
xlabel('Variable');
ylabel('Result');

