A = [2, -1, 1; -3, 2, 2; 1, 1, 3];
b = [8; 3; 6];
x = gaussianElimination(A, b);
disp(x);
function x = gaussianElimination(A, b)
    % Check if the matrix A is square
    [m, n] = size(A);
    if m ~= n
        error('Matrix A must be square.');
    end

    % Augment the matrix A with the vector b
    augmentedMatrix = [A, b];

    % Perform Gaussian Elimination
    for k = 1:n-1
        % Partial Pivoting
        [pivot, pivotRow] = max(abs(augmentedMatrix(k:n, k)));
        pivotRow = pivotRow + k - 1;
        
        if pivot == 0
            error('Matrix is singular.');
        end
        
        % Swap rows k and pivotRow
        augmentedMatrix([k, pivotRow], :) = augmentedMatrix([pivotRow, k], :);
        
        for i = k+1:n
            factor = augmentedMatrix(i, k) / augmentedMatrix(k, k);
            augmentedMatrix(i, k:n+1) = augmentedMatrix(i, k:n+1) - factor * augmentedMatrix(k, k:n+1);
        end
    end

    % Back-substitution
    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (augmentedMatrix(i, end) - augmentedMatrix(i, i+1:n) * x(i+1:n)) / augmentedMatrix(i, i);
    end
end

 
