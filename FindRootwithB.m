function root = FindRootwithB(a, b, maxiter, tol)
    % Define the function f(x)
    f = @(x) 3*x^2 + 4*x - 4;

    % Initialize iteration count and midpoint
    iter = 0;
    c_old = (a + b) / 2; % Initial midpoint

    while iter < maxiter
        iter = iter + 1;
        c_new = (a + b) / 2; % Recalculate midpoint

        % Check if the function value at midpoint is close to zero
        if abs(f(c_new)) < tol
            root = c_new;
            fprintf('Approximate root after %d iterations: %.6f\n', iter, root);
            return;
        end

        % Check which interval contains the root
        if f(a) * f(c_new) < 0 % Check if root is in [a, c_new]
            b = c_new; % Update b to c_new
        else
            a = c_new; % Update a to c_new
        end

        % Check if the interval change is within tolerance
        if abs(c_old - c_new) < tol
            root = c_new;
            fprintf('Approximate root after %d iterations: %.6f\n', iter, root);
            return;
        end

        c_old = c_new; % Update previous estimate
    end

    % If convergence not reached within max iterations
    fprintf("Method did not converge after %d iterations.\n", maxiter);
    root = c_new; % Last midpoint approximation
end

