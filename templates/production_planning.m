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
disp('Optimal production:');
disp(['Product A: ' num2str(round(x(1)))]);
disp(['Product B: ' num2str(round(x(2)))]);
disp('Maximum profit:');
disp(-fval);
