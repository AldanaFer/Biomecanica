function grafica_vel_ang(Datos,LHS1,LHS2,LTO,RHS1,RHS2,RTO)

desp_der = round((RTO-RHS1)/(RHS2-RHS1),1)*100;
desp_izq = round((LTO-LHS1)/(LHS2-LHS1),1)*100;

x = 1:100;

%====================== Interpolacion a 100 muestras ======================
% Muslo
muslo_der_x = InterpolaA100Muestras(Datos.vel_angular.muslo_der.wx(RHS1:RHS2));
muslo_izq_x = InterpolaA100Muestras(Datos.vel_angular.muslo_izq.wx(LHS1:LHS2));

muslo_der_y = InterpolaA100Muestras(Datos.vel_angular.muslo_der.wy(RHS1:RHS2));
muslo_izq_y = InterpolaA100Muestras(Datos.vel_angular.muslo_izq.wy(LHS1:LHS2));

muslo_der_z = InterpolaA100Muestras(Datos.vel_angular.muslo_der.wz(RHS1:RHS2));
muslo_izq_z = InterpolaA100Muestras(Datos.vel_angular.muslo_izq.wz(LHS1:LHS2));

% Pierna
pierna_der_x = InterpolaA100Muestras(Datos.vel_angular.pierna_der.wx(RHS1:RHS2));
pierna_izq_x = InterpolaA100Muestras(Datos.vel_angular.pierna_izq.wx(LHS1:LHS2));

pierna_der_y = InterpolaA100Muestras(Datos.vel_angular.pierna_der.wy(RHS1:RHS2));
pierna_izq_y = InterpolaA100Muestras(Datos.vel_angular.pierna_izq.wy(LHS1:LHS2));

pierna_der_z = InterpolaA100Muestras(Datos.vel_angular.pierna_der.wz(RHS1:RHS2));
pierna_izq_z = InterpolaA100Muestras(Datos.vel_angular.pierna_izq.wz(LHS1:LHS2));

% Pie
pie_der_x = InterpolaA100Muestras(Datos.vel_angular.pie_der.wx(RHS1:RHS2));
pie_izq_x = InterpolaA100Muestras(Datos.vel_angular.pie_izq.wx(LHS1:LHS2));

pie_der_y = InterpolaA100Muestras(Datos.vel_angular.pie_der.wy(RHS1:RHS2));
pie_izq_y = InterpolaA100Muestras(Datos.vel_angular.pie_izq.wy(LHS1:LHS2));

pie_der_z = InterpolaA100Muestras(Datos.vel_angular.pie_der.wz(RHS1:RHS2));
pie_izq_z = InterpolaA100Muestras(Datos.vel_angular.pie_izq.wz(LHS1:LHS2));

%============================= Figura unica ==============================
figure('Name','Grafica General Velocidades Angulares','NumberTitle','off');

%============================ FILA 1 MUSLO ============================
subplot(3,3,1); hold on; grid on;
title('Muslo wx');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,muslo_der_x,'g','LineWidth',2);
plot(x,muslo_izq_x,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Muslo Derecho','Muslo Izquierdo');
xlim([1 100]);

subplot(3,3,2); hold on; grid on;
title('Muslo wy');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,muslo_der_y,'g','LineWidth',2);
plot(x,muslo_izq_y,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Muslo Derecho','Muslo Izquierdo');
xlim([1 100]);

subplot(3,3,3); hold on; grid on;
title('Muslo wz');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,muslo_der_z,'g','LineWidth',2);
plot(x,muslo_izq_z,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Muslo Derecho','Muslo Izquierdo');
xlim([1 100]);

%============================ FILA 2 PIERNA ============================
subplot(3,3,4); hold on; grid on;
title('Pierna wx');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,pierna_der_x,'g','LineWidth',2);
plot(x,pierna_izq_x,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Pierna Derecha','Pierna Izquierda');
xlim([1 100]);

subplot(3,3,5); hold on; grid on;
title('Pierna wy');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,pierna_der_y,'g','LineWidth',2);
plot(x,pierna_izq_y,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Pierna Derecha','Pierna Izquierda');
xlim([1 100]);

subplot(3,3,6); hold on; grid on;
title('Pierna wz');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,pierna_der_z,'g','LineWidth',2);
plot(x,pierna_izq_z,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Pierna Derecha','Pierna Izquierda');
xlim([1 100]);

%============================ FILA 3 PIE ============================
subplot(3,3,7); hold on; grid on;
title('Pie wx');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,pie_der_x,'g','LineWidth',2);
plot(x,pie_izq_x,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Pie Derecho','Pie Izquierdo');
xlim([1 100]);

subplot(3,3,8); hold on; grid on;
title('Pie wy');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,pie_der_y,'g','LineWidth',2);
plot(x,pie_izq_y,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Pie Derecho','Pie Izquierdo');
xlim([1 100]);

subplot(3,3,9); hold on; grid on;
title('Pie wz');
xlabel('% Ciclo de Marcha');
ylabel('Velocidad angular [°/s]');
plot(x,pie_der_z,'g','LineWidth',2);
plot(x,pie_izq_z,'r','LineWidth',2);
xline(desp_der,'--g','LineWidth',1);
xline(desp_izq,'--r','LineWidth',1);
legend('Pie Derecho','Pie Izquierdo');
xlim([1 100]);

end