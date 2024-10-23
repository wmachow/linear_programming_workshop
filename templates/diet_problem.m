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

% Display results
disp('Optimal diet:');
disp(['Food X: ' num2str(x(1))]);
disp(['Food Y: ' num2str(x(2))]);
disp('Minimum cost:');
disp(fval);
