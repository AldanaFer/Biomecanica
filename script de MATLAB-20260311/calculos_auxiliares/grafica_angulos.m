% function grafica_angulos(Datos,LHS1,LHS2,LTO,RHS1,RHS2,RTO)
% 
% %===========================Angulos Cadera================================
% %===========================Alpha===========================
% figure; hold on; grid on;
% title('Grafica Angulos Cadera Alpha');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_cad_der_alpha_100 = InterpolaA100Muestras(Datos.angulos.cad_der.alpha);
% ang_cad_izq_alpha_100 = InterpolaA100Muestras(Datos.angulos.cad_izq.alpha);
% 
% plot(1:100, ang_cad_der_alpha_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_cad_izq_alpha_100, 'r', 'LineWidth', 2);
% 
% legend('Cadera Derecha','Cadera Izquierda');
% xlim([1 100]);
% 
% %===========================Beta===========================
% figure; hold on; grid on;
% title('Grafica Angulos Cadera Beta');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_cad_der_beta_100 = InterpolaA100Muestras(Datos.angulos.cad_der.beta);
% ang_cad_izq_beta_100 = InterpolaA100Muestras(Datos.angulos.cad_izq.beta);
% 
% plot(1:100, ang_cad_der_beta_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_cad_izq_beta_100, 'r', 'LineWidth', 2);
% 
% legend('Cadera Derecha','Cadera Izquierda');
% xlim([1 100]);
% 
% %===========================Gama===========================
% figure; hold on; grid on;
% title('Grafica Angulos Cadera Gama');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_cad_der_gama_100 = InterpolaA100Muestras(Datos.angulos.cad_der.gama);
% ang_cad_izq_gama_100 = InterpolaA100Muestras(Datos.angulos.cad_izq.gama);
% 
% plot(1:100, ang_cad_der_gama_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_cad_izq_gama_100, 'r', 'LineWidth', 2);
% 
% legend('Cadera Derecha','Cadera Izquierda');
% xlim([1 100]);
% 
% %===========================Angulos Rodilla================================
% %===========================Alpha===========================
% figure; hold on; grid on;
% title('Grafica Angulos Rodilla Alpha');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_rod_der_alpha_100 = InterpolaA100Muestras(Datos.angulos.rod_der.alpha);
% ang_rod_izq_alpha_100 = InterpolaA100Muestras(Datos.angulos.rod_izq.alpha);
% 
% plot(1:100, ang_rod_der_alpha_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_rod_izq_alpha_100, 'r', 'LineWidth', 2);
% 
% legend('Rodilla Derecha','Rodilla Izquierda');
% xlim([1 100]);
% 
% %===========================Beta===========================
% figure; hold on; grid on;
% title('Grafica Angulos Rodilla Beta');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_rod_der_beta_100 = InterpolaA100Muestras(Datos.angulos.rod_der.beta);
% ang_rod_izq_beta_100 = InterpolaA100Muestras(Datos.angulos.rod_izq.beta);
% 
% plot(1:100, ang_rod_der_beta_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_rod_izq_beta_100, 'r', 'LineWidth', 2);
% 
% legend('Rodilla Derecha','Rodilla Izquierda');
% xlim([1 100]);
% 
% %===========================Gama===========================
% figure; hold on; grid on;
% title('Grafica Angulos Rodilla Gama');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_rod_der_gama_100 = InterpolaA100Muestras(Datos.angulos.rod_der.gama);
% ang_rod_izq_gama_100 = InterpolaA100Muestras(Datos.angulos.rod_izq.gama);
% 
% plot(1:100, ang_rod_der_gama_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_rod_izq_gama_100, 'r', 'LineWidth', 2);
% 
% legend('Rodilla Derecha','Rodilla Izquierda');
% xlim([1 100]);
% 
% %===========================Angulos Tobillo================================
% %===========================Alpha===========================
% 
% figure; hold on; grid on;
% title('Grafica Angulos Tobillo Alpha');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_tob_der_alpha_100 = InterpolaA100Muestras(Datos.angulos.tob_der.alpha);
% ang_tob_izq_alpha_100 = InterpolaA100Muestras(Datos.angulos.tob_izq.alpha);
% 
% plot(1:100, ang_tob_der_alpha_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_tob_izq_alpha_100, 'r', 'LineWidth', 2);
% 
% legend('Tobillo Derecho','Tobillo Izquierdo');
% xlim([1 100]);
% 
% %===========================Beta===========================
% figure; hold on; grid on;
% title('Grafica Angulos Tobillo Beta');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_tob_der_beta_100 = InterpolaA100Muestras(Datos.angulos.tob_der.beta);
% ang_tob_izq_beta_100 = InterpolaA100Muestras(Datos.angulos.tob_izq.beta);
% 
% plot(1:100, ang_tob_der_beta_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_tob_izq_beta_100, 'r', 'LineWidth', 2);
% 
% legend('Tobillo Derecho','Tobillo Izquierdo');
% xlim([1 100]);
% 
% %===========================Gama===========================
% figure; hold on; grid on;
% title('Grafica Angulos Tobillo Gama');
% xlabel('% Ciclo de Marcha');
% ylabel('Angulo (°)');
% 
% ang_tob_der_gama_100 = InterpolaA100Muestras(Datos.angulos.tob_der.gama);
% ang_tob_izq_gama_100 = InterpolaA100Muestras(Datos.angulos.tob_izq.gama);
% 
% plot(1:100, ang_tob_der_gama_100, 'b', 'LineWidth', 2);
% plot(1:100, ang_tob_izq_gama_100, 'r', 'LineWidth', 2);
% 
% legend('Tobillo Derecho','Tobillo Izquierdo');
% xlim([1 100]);
% 
% end


%=======================================================================
%=======================================================================
%=======================================================================
%=======================================================================




% function grafica_angulos(Datos,LHS1,LHS2,LTO,RHS1,RHS2,RTO)
% 
% %====================== Interpolacion a 100 muestras ======================
% x = 1:100;
% 
% % Cadera
% cad_der_a = InterpolaA100Muestras(Datos.angulos.cad_der.alpha);
% cad_izq_a = InterpolaA100Muestras(Datos.angulos.cad_izq.alpha);
% 
% cad_der_b = InterpolaA100Muestras(Datos.angulos.cad_der.beta);
% cad_izq_b = InterpolaA100Muestras(Datos.angulos.cad_izq.beta);
% 
% cad_der_g = InterpolaA100Muestras(Datos.angulos.cad_der.gama);
% cad_izq_g = InterpolaA100Muestras(Datos.angulos.cad_izq.gama);
% 
% % Rodilla
% rod_der_a = InterpolaA100Muestras(Datos.angulos.rod_der.alpha);
% rod_izq_a = InterpolaA100Muestras(Datos.angulos.rod_izq.alpha);
% 
% rod_der_b = InterpolaA100Muestras(Datos.angulos.rod_der.beta);
% rod_izq_b = InterpolaA100Muestras(Datos.angulos.rod_izq.beta);
% 
% rod_der_g = InterpolaA100Muestras(Datos.angulos.rod_der.gama);
% rod_izq_g = InterpolaA100Muestras(Datos.angulos.rod_izq.gama);
% 
% % Tobillo
% tob_der_a = InterpolaA100Muestras(Datos.angulos.tob_der.alpha);
% tob_izq_a = InterpolaA100Muestras(Datos.angulos.tob_izq.alpha);
% 
% tob_der_b = InterpolaA100Muestras(Datos.angulos.tob_der.beta);
% tob_izq_b = InterpolaA100Muestras(Datos.angulos.tob_izq.beta);
% 
% tob_der_g = InterpolaA100Muestras(Datos.angulos.tob_der.gama);
% tob_izq_g = InterpolaA100Muestras(Datos.angulos.tob_izq.gama);
% 
% %============================= Figura unica ==============================
% figure('Name','Grafica General Angulos','NumberTitle','off');
% 
% %============================= FILA 1 CADERA =============================
% subplot(3,3,1); hold on; grid on;
% plot(x,cad_der_a,'b','LineWidth',2);
% plot(x,cad_izq_a,'r','LineWidth',2);
% title('Cadera Alpha');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% subplot(3,3,2); hold on; grid on;
% plot(x,cad_der_b,'b','LineWidth',2);
% plot(x,cad_izq_b,'r','LineWidth',2);
% title('Cadera Beta');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% subplot(3,3,3); hold on; grid on;
% plot(x,cad_der_g,'b','LineWidth',2);
% plot(x,cad_izq_g,'r','LineWidth',2);
% title('Cadera Gama');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% %============================ FILA 2 RODILLA ============================
% subplot(3,3,4); hold on; grid on;
% plot(x,rod_der_a,'b','LineWidth',2);
% plot(x,rod_izq_a,'r','LineWidth',2);
% title('Rodilla Alpha');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% subplot(3,3,5); hold on; grid on;
% plot(x,rod_der_b,'b','LineWidth',2);
% plot(x,rod_izq_b,'r','LineWidth',2);
% title('Rodilla Beta');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% subplot(3,3,6); hold on; grid on;
% plot(x,rod_der_g,'b','LineWidth',2);
% plot(x,rod_izq_g,'r','LineWidth',2);
% title('Rodilla Gama');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% %============================ FILA 3 TOBILLO ============================
% subplot(3,3,7); hold on; grid on;
% plot(x,tob_der_a,'b','LineWidth',2);
% plot(x,tob_izq_a,'r','LineWidth',2);
% title('Tobillo Alpha');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% subplot(3,3,8); hold on; grid on;
% plot(x,tob_der_b,'b','LineWidth',2);
% plot(x,tob_izq_b,'r','LineWidth',2);
% title('Tobillo Beta');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% subplot(3,3,9); hold on; grid on;
% plot(x,tob_der_g,'b','LineWidth',2);
% plot(x,tob_izq_g,'r','LineWidth',2);
% title('Tobillo Gama');
% xlabel('% Ciclo');
% ylabel('Angulo (°)');
% legend('Der','Izq');
% xlim([1 100]);
% 
% end

%=======================================================================
%=======================================================================
%=======================================================================
%=======================================================================

function grafica_angulos(Datos,LHS1,LHS2,LTO,RHS1,RHS2,RTO)

ciclo_der=Datos.eventos.Derecho_RHS(2)-Datos.eventos.Derecho_RHS(1); 
ciclo_izq=Datos.eventos.Izquierdo_LHS(2)-Datos.eventos.Izquierdo_LHS(1); 

% 
desp_der=round((RTO-RHS1)/ciclo_der,1)*100; 
desp_izq=round((LTO-LHS1)/ciclo_izq,1)*100;

x_RTO=60; 
x_LTO=60; 


%====================== Interpolacion a 100 muestras ======================
x = 1:100;

% Cadera
cad_der_a = InterpolaA100Muestras(Datos.angulos.cad_der.alpha(RHS1:RHS2));
cad_izq_a = InterpolaA100Muestras(Datos.angulos.cad_izq.alpha(LHS1:LHS2));

cad_der_b = InterpolaA100Muestras(Datos.angulos.cad_der.beta(RHS1:RHS2));
cad_izq_b = InterpolaA100Muestras(Datos.angulos.cad_izq.beta(LHS1:LHS2));

cad_der_g = InterpolaA100Muestras(Datos.angulos.cad_der.gama(RHS1:RHS2));
cad_izq_g = InterpolaA100Muestras(Datos.angulos.cad_izq.gama(LHS1:LHS2));

% Rodilla
rod_der_a = InterpolaA100Muestras(Datos.angulos.rod_der.alpha(RHS1:RHS2));
rod_izq_a = InterpolaA100Muestras(Datos.angulos.rod_izq.alpha(LHS1:LHS2));

rod_der_b = InterpolaA100Muestras(Datos.angulos.rod_der.beta(RHS1:RHS2));
rod_izq_b = InterpolaA100Muestras(Datos.angulos.rod_izq.beta(LHS1:LHS2));

rod_der_g = InterpolaA100Muestras(Datos.angulos.rod_der.gama(RHS1:RHS2));
rod_izq_g = InterpolaA100Muestras(Datos.angulos.rod_izq.gama(LHS1:LHS2));

% Tobillo
tob_der_a = InterpolaA100Muestras(Datos.angulos.tob_der.alpha(RHS1:RHS2));
tob_izq_a = InterpolaA100Muestras(Datos.angulos.tob_izq.alpha(LHS1:LHS2));

tob_der_b = InterpolaA100Muestras(Datos.angulos.tob_der.beta(RHS1:RHS2));
tob_izq_b = InterpolaA100Muestras(Datos.angulos.tob_izq.beta(LHS1:LHS2));

tob_der_g = InterpolaA100Muestras(Datos.angulos.tob_der.gama(RHS1:RHS2));
tob_izq_g = InterpolaA100Muestras(Datos.angulos.tob_izq.gama(LHS1:LHS2));

%============================= Figura unica ==============================
figure('Name','Grafica General Angulos','NumberTitle','off');

subplot(3,3,1); hold on; grid on;
title('Cadera Alpha');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,cad_der_a,'b','LineWidth',2);
plot(x,cad_izq_a,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Cadera Derecha','Cadera Izquierda');
xlim([1 100]);

subplot(3,3,2); hold on; grid on;
title('Cadera Beta');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,cad_der_b,'b','LineWidth',2);
plot(x,cad_izq_b,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Cadera Derecha','Cadera Izquierda');
xlim([1 100]);

subplot(3,3,3); hold on; grid on;
title('Cadera Gama');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,cad_der_g,'b','LineWidth',2);
plot(x,cad_izq_g,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Cadera Derecha','Cadera Izquierda');
xlim([1 100]);

%============================ FILA 2 RODILLA ============================
subplot(3,3,4); hold on; grid on;
title('Rodilla Alpha');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,rod_der_a,'b','LineWidth',2);
plot(x,rod_izq_a,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Rodilla Derecha','Rodilla Izquierda');
xlim([1 100]);

subplot(3,3,5); hold on; grid on;
title('Rodilla Beta');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,rod_der_b,'b','LineWidth',2);
plot(x,rod_izq_b,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Rodilla Derecha','Rodilla Izquierda');
xlim([1 100]);

subplot(3,3,6); hold on; grid on;
title('Rodilla Gama');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,rod_der_g,'b','LineWidth',2);
plot(x,rod_izq_g,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Rodilla Derecha','Rodilla Izquierda');
xlim([1 100]);

%============================ FILA 3 TOBILLO ============================
subplot(3,3,7); hold on; grid on;
title('Tobillo Alpha');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,tob_der_a,'b','LineWidth',2);
plot(x,tob_izq_a,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Tobillo Derecho','Tobillo Izquierdo');
xlim([1 100]);

subplot(3,3,8); hold on; grid on;
title('Tobillo Beta');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,tob_der_b,'b','LineWidth',2);
plot(x,tob_izq_b,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Tobillo Derecho','Tobillo Izquierdo');
xlim([1 100]);

subplot(3,3,9); hold on; grid on;
title('Tobillo Gama');
xlabel('% Ciclo de Marcha');
ylabel('Angulo (°)');
plot(x,tob_der_g,'b','LineWidth',2);
plot(x,tob_izq_g,'r','LineWidth',2);
xline(x_RTO,'--k','LineWidth',1);
legend('Tobillo Derecho','Tobillo Izquierdo');
xlim([1 100]);


end