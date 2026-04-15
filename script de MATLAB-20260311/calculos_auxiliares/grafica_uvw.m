function grafica_uvw(Datos)

%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;

n_muestras = length(val.sacrum)
esc = 0.1;

figure; hold on; grid on; axis equal; view(3);
title('Grafica de u, v y w');

%====================================Trayectoria de puntos====================================

plot3(val.r_met(:,1),    val.r_met(:,2),    val.r_met(:,3),    'k')
plot3(val.r_heel(:,1),   val.r_heel(:,2),   val.r_heel(:,3),   'k')
plot3(val.r_mall(:,1),   val.r_mall(:,2),   val.r_mall(:,3),   'k')
plot3(val.r_bar_2(:,1),  val.r_bar_2(:,2),  val.r_bar_2(:,3),  'k')
plot3(val.r_knee_1(:,1), val.r_knee_1(:,2), val.r_knee_1(:,3), 'k')
plot3(val.r_bar_1(:,1),  val.r_bar_1(:,2),  val.r_bar_1(:,3),  'k')
plot3(val.r_asis(:,1),   val.r_asis(:,2),   val.r_asis(:,3),   'k')

plot3(val.l_met(:,1),    val.l_met(:,2),    val.l_met(:,3),    'k')
plot3(val.l_heel(:,1),   val.l_heel(:,2),   val.l_heel(:,3),   'k')
plot3(val.l_mall(:,1),   val.l_mall(:,2),   val.l_mall(:,3),   'k')
plot3(val.l_bar_2(:,1),  val.l_bar_2(:,2),  val.l_bar_2(:,3),  'k')
plot3(val.l_knee_1(:,1), val.l_knee_1(:,2), val.l_knee_1(:,3), 'k')
plot3(val.l_bar_1(:,1),  val.l_bar_1(:,2),  val.l_bar_1(:,3),  'k')
plot3(val.l_asis(:,1),   val.l_asis(:,2),   val.l_asis(:,3),   'k')

plot3(val.sacrum(:,1),   val.sacrum(:,2),   val.sacrum(:,3),   'k')

%====================================Trayectoria de vectores====================================

for i = 1:10:n_muestras

    % =========================SACRO=========================
    origen = val.sacrum(i,:);
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pelvis.u(i,1), esc*Datos.SCL.pelvis.u(i,2), esc*Datos.SCL.pelvis.u(i,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pelvis.v(i,1), esc*Datos.SCL.pelvis.v(i,2), esc*Datos.SCL.pelvis.v(i,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pelvis.w(i,1), esc*Datos.SCL.pelvis.w(i,2), esc*Datos.SCL.pelvis.w(i,3), 0, 'b', 'LineWidth', 1.5)

    % =========================PIERNA DERECHA=========================
    origen = val.r_knee_1(i,:);
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pierna_der.u(i,1), esc*Datos.SCL.pierna_der.u(i,2), esc*Datos.SCL.pierna_der.u(i,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pierna_der.v(i,1), esc*Datos.SCL.pierna_der.v(i,2), esc*Datos.SCL.pierna_der.v(i,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pierna_der.w(i,1), esc*Datos.SCL.pierna_der.w(i,2), esc*Datos.SCL.pierna_der.w(i,3), 0, 'b', 'LineWidth', 1.5)

    % =========================PIERNA IZQUIERDA=========================
    origen = val.l_knee_1(i,:);
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pierna_izq.u(i,1), esc*Datos.SCL.pierna_izq.u(i,2), esc*Datos.SCL.pierna_izq.u(i,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pierna_izq.v(i,1), esc*Datos.SCL.pierna_izq.v(i,2), esc*Datos.SCL.pierna_izq.v(i,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pierna_izq.w(i,1), esc*Datos.SCL.pierna_izq.w(i,2), esc*Datos.SCL.pierna_izq.w(i,3), 0, 'b', 'LineWidth', 1.5)

    % =========================PIE DERECHO=========================
    origen = val.r_mall(i,:);
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pie_der.u(i,1), esc*Datos.SCL.pie_der.u(i,2), esc*Datos.SCL.pie_der.u(i,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pie_der.v(i,1), esc*Datos.SCL.pie_der.v(i,2), esc*Datos.SCL.pie_der.v(i,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pie_der.w(i,1), esc*Datos.SCL.pie_der.w(i,2), esc*Datos.SCL.pie_der.w(i,3), 0, 'b', 'LineWidth', 1.5)

    % =========================PIE IZQUIERDO=========================
    origen = val.l_mall(i,:);
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pie_izq.u(i,1), esc*Datos.SCL.pie_izq.u(i,2), esc*Datos.SCL.pie_izq.u(i,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pie_izq.v(i,1), esc*Datos.SCL.pie_izq.v(i,2), esc*Datos.SCL.pie_izq.v(i,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*Datos.SCL.pie_izq.w(i,1), esc*Datos.SCL.pie_izq.w(i,2), esc*Datos.SCL.pie_izq.w(i,3), 0, 'b', 'LineWidth', 1.5)

end

xlabel('X')
ylabel('Y')
zlabel('Z')

end