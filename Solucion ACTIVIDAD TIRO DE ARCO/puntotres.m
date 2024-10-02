% Datos de la tabla
x = 0:0.05:0.50; % desplazamiento en metros
F = [0 37 71 104 134 161 185 207 225 239 250]; % fuerza en Newtons
m = 0.075; % masa de la flecha en kg

% Prealocar matrices para almacenar los resultados
W_trapecio = zeros(size(x));
W_simpson = zeros(size(x));
v_trapecio = zeros(size(x));
v_simpson = zeros(size(x));

% Función de energía cinética
kinetic_energy = @(W) sqrt(2 * W / m);

% Calcular la integral y la velocidad para cada valor de x
for i = 2:length(x)
    % Regla del trapecio
    W_trapecio(i) = trapz(x(1:i), F(1:i));
    v_trapecio(i) = kinetic_energy(W_trapecio(i));
    
    % Regla de Simpson 1/3 (si el número de puntos es suficiente y es par)
    if mod(i, 2) == 1 && i > 2
        W_simpson(i) = simpson(x(1:i), F(1:i));
        v_simpson(i) = kinetic_energy(W_simpson(i));
    else
        W_simpson(i) = NaN;
        v_simpson(i) = NaN;
    end
end

% Mostrar resultados
fprintf('x (m)\tTrapecio W (J)\tSimpson W (J)\tTrapecio v (m/s)\tSimpson v (m/s)\n');
for i = 2:length(x)
    fprintf('%.2f\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n', x(i), W_trapecio(i), W_simpson(i), v_trapecio(i), v_simpson(i));
end

% Función para regla de Simpson 1/3
function integral = simpson(x, y)
    n = length(x);
    if mod(n, 2) == 0
        error('Simpson''s rule requires an odd number of points.');
    end
    h = (x(end) - x(1)) / (n - 1);
    integral = y(1) + y(end);
    for i = 2:2:n-1
        integral = integral + 4 * y(i);
    end
    for i = 3:2:n-2
        integral = integral + 2 * y(i);
    end
    integral = integral * h / 3;
end