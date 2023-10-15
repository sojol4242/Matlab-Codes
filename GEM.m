% User input for the number of equations and coefficients
n = input('Enter the number of equations: ');

A = zeros(n, n+1);

% Input the coefficients and constants
disp('Enter the coefficients of the equations:')
for i = 1:n
    for j = 1:n
        A(i, j) = input(['Enter coefficient A(' num2str(i) ',' num2str(j) '): ']);
    end
    A(i, n+1) = input(['Enter the constant B(' num2str(i) '): ']);
end

% Perform Gaussian Elimination
for k = 1:n-1
    for i = k+1:n
        factor = A(i, k) / A(k, k);
        for j = k:n+1
            A(i, j) = A(i, j) - factor * A(k, j);
        end
    end
end

% Back substitution
x = zeros(n, 1);
x(n) = A(n, n+1) / A(n, n);
for i = n-1:-1:1
    x(i) = (A(i, n+1) - sum(A(i, i+1:n) * x(i+1:n))) / A(i, i);
end

% Display the results
disp('Solution to the system of equations:');
disp(x);

% Plot the results
figure;
bar(x);
title('Solution to the System of Equations');
xlabel('Variable');
ylabel('Value');
