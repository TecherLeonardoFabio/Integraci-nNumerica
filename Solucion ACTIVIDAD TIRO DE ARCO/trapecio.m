% Datos del Problema
x = [0, 0.05, 0.10, 0.15, 0.20, 0.25, 0.30, 0.35, 0.40, 0.45, 0.50];
F = [0, 37, 71, 104, 134, 161, 185, 207, 225, 239, 250];
m = 0.075; % masa de la flecha en kg

% Regla del trapecio
n = length(x) - 1;
h = x(2) - x(1);
W_trap = h/2 * (F(1) + 2*sum(F(2:end-1)) + F(end));

% Velocidad usando la regla del trapecio
v_trap = sqrt(2 * W_trap / m);

% Resultados
fprintf('Trabajo usando la regla del trapecio: %.2f J\n', W_trap);
fprintf('Velocidad usando la regla del trapecio: %.2f m/s\n', v_trap);
