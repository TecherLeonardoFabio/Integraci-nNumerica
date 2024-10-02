% Datos
x = [0, 0.05, 0.10, 0.15, 0.20, 0.25, 0.30, 0.35, 0.40, 0.45, 0.50];
F = [0, 37, 71, 104, 134, 161, 185, 207, 225, 239, 250];
m = 0.075; % masa de la flecha en kg

% Regla de Simpson 1/3
n = length(x) - 1;
h = x(2) - x(1);
W_simp = h/3 * (F(1) + 4*sum(F(2:2:end-1)) + 2*sum(F(3:2:end-2)) + F(end));

% Velocidad usando la regla de Simpson
v_simp = sqrt(2 * W_simp / m);

% Resultados
fprintf('Trabajo usando la regla de Simpson: %.2f J\n', W_simp);
fprintf('Velocidad usando la regla de Simpson: %.2f m/s\n', v_simp);