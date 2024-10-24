% Define the problem

% Use this when using octave
f = [2; 3; 4; 3; 2; 1];  % Shipping costs

% Use this when using matlab
% f = [2 3 4 3 2 1];  % Shipping costs

Aeq = [1 1 1 0 0 0; 0 0 0 1 1 1;  % Supply constraints
       1 0 0 1 0 0; 0 1 0 0 1 0; 0 0 1 0 0 1];  % Demand constraints
beq = [100; 120; 80; 70; 70];
lb = zeros(6,1);

% Solve the primal problem
[x, fval] = linprog(f, [], [], Aeq, beq, lb, []);

% Display results
disp('Optimal shipping plan:');
disp(['W1 to S1: ' num2str(x(1))]);
disp(['W1 to S2: ' num2str(x(2))]);
disp(['W1 to S3: ' num2str(x(3))]);
disp(['W2 to S1: ' num2str(x(4))]);
disp(['W2 to S2: ' num2str(x(5))]);
disp(['W2 to S3: ' num2str(x(6))]);
disp(['Minimum total cost: $' num2str(fval)]);
