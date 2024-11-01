function root = FindRootwithP(x0, tol, maxiter)

    g = @(x) (-3 * x^2 + 4) / 4;

    iter = 0;
    while iter < maxiter
        iter = iter + 1;


        x = g(x0);

        % Vérification de la convergence
        if abs(x - x0) <= tol
            root = x; % racine trouvée
            fprintf("Convergence atteinte après %d itérations. Racine: %.6f\n", iter, root);
            return;
        end

        % Mise à jour pour l'itération suivante
        x0 = x;
    end

    % Si la convergence n'a pas été atteinte
    fprintf("La méthode n'a pas convergé après %d itérations.\n", maxiter);
    root = x; % dernière approximation
end

