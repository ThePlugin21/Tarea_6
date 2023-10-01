[t,x]=ode45(@ODE45_Convertidor,[0 0.01], [0 0]);

figure(1)

subplot(2,1,1);  
plot(t,x(:,1));
grid on
title("Convertidor CD-CD: Corriente vs. Tiempo");
xlabel("Tiempo");
ylabel("Corriente");

subplot(2,1,2); 
plot(t,x(:,2));
grid on
title("Convertidor CD-CD: Voltaje vs. Tiempo");
xlabel("Tiempo");
ylabel("Voltaje");
