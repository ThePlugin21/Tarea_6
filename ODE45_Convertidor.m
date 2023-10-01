function dx = ODE45_Convertidor(t,x)

% --- Parámetros ---

% Parámetros eléctricos
L = 0.002;      % Inductancia en Henrys
R = 10;         % Resistencia en Ohms
C = 0.000010;   % Capacitancia en Faradios
Vin = 32;       % Voltaje de entrada en Volts
Vd = 0.6;       % Caída de voltaje en un diodo en Volts
dt = 0.4;       % Paso de tiempo o intervalo de tiempo

% Inicializa el vector dx como un vector columna de 2x1 lleno de ceros.
% dx almacenará las derivadas de x con respecto al tiempo.
dx = zeros(2,1);

% Calcula la primera derivada del sistema basada en una ecuación diferencial.
dx(1)=-x(2)/L-Vd/L+(Vin/L)*dt;

% Calcula la segunda derivada del sistema basada en otra ecuación diferencial.
dx(2)=x(1)/C-x(2)/(R*C);

end
