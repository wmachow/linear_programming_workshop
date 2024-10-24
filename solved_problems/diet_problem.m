% Define the problem

% Use this when using octave
f = [2; 3];      % Cost per unit

% Use this when using matlab
% f = [2 3];      % Cost per unit

A = [-3 -1; -1 -2];  % Negative nutrient content
b = [-9; -6];    % Negative minimum requirements
lb = [0; 0];     % Non-negative quantities

% Solve the problem
[x, fval] = linprog(f, A, b, [], [], lb, []);

% Display results
disp('Optimal diet:');
disp(['Food X: ' num2str(x(1))]);
disp(['Food Y: ' num2str(x(2))]);
disp('Minimum cost:');
disp(fval);
