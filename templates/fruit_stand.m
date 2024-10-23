% Define the problem
f = [];
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];

% Solve the problem
[x, fval] = linprog(f, A, b, Aeq, beq, lb, ub);

% Display the results
disp('Optimal solution:');
disp(['Apples: ' num2str(round(x(1)))]);
disp(['Oranges: ' num2str(round(x(2)))]);
disp('Maximum profit:');
disp(-fval);  % Negate fval because we maximized negative profit
