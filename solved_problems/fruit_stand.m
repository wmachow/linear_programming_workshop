% Define the problem

% Use this when using octave
f = [-0.5; -0.75];  % Negative profit per fruit (we want to maximize profit)

% Use this when using matlab
% f = [-0.5 -0.75];  % Negative profit per fruit (we want to maximize profit)

A = [1 1; 0.5 0.75; -1 0; 0 -1];  % Inequality constraint matrix
b = [100; 80; -20; -20];  % Inequality constraint vector
lb = [0; 0];  % Lower bounds

% Solve the problem
[x, fval] = linprog(f, A, b, [], [], lb, []);

% Display the results
disp('Optimal solution:');
disp(['Apples: ' num2str(round(x(1)))]);
disp(['Oranges: ' num2str(round(x(2)))]);
disp('Maximum profit:');
disp(-fval);  % Negate fval because we maximized negative profit
