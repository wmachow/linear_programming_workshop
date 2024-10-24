% Define the problem

% Use this when using octave
f = [-40; -30];  % Negative profit (we want to maximize)

% Use this when using matlab
% f = [-40 -30];  % Negative profit (we want to maximize)

A = [2 1; 1 2];  % Resource usage
b = [100; 80];   % Resource limits
lb = [0; 0];     % Non-negative production

% Solve the problem
[x, fval] = linprog(f, A, b, [], [], lb, []);

% Display results
disp('Optimal production:');
disp(['Product A: ' num2str(round(x(1)))]);
disp(['Product B: ' num2str(round(x(2)))]);
disp('Maximum profit:');
disp(-fval);
