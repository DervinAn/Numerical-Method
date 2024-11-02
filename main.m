function main()
    % Appel de FindRootwithB pour la méthode de bissection
    a = -3;
    b = 2;
    maxiter = 100;
    tol = 1e-5;
    rootB = FindRootwithB(a, b, maxiter, tol);

    % Appel de FindRootwithP pour la méthode de point fixe
    x0 = 0.5;   % Point de départ chose point
    maxiter = 1000; % resnable number
    tol = 1e-5; % Tolérance
    rootP = FindRootwithP(x0, tol, maxiter);

    FindRootwithNR(tol)
end

