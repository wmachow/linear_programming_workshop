% Define the problem
f = [];
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];

% Solve the primal problem
[x, fval] = linprog(f, A, b, Aeq, beq, lb, ub);

% Display results
disp('Optimal shipping plan:');
disp(['W1 to S1: ' num2str(x(1))]);
disp(['W1 to S2: ' num2str(x(2))]);
disp(['W1 to S3: ' num2str(x(3))]);
disp(['W2 to S1: ' num2str(x(4))]);
disp(['W2 to S2: ' num2str(x(5))]);
disp(['W2 to S3: ' num2str(x(6))]);
disp(['Minimum total cost: $' num2str(fval)]);
