function grafica_centro_articular(Datos)


%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;

figure; hold on; grid on; axis equal; view(3);
title('Grafica de Centros Articulares');

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

plot3(Datos.CA.cadera_d(:,1),   Datos.CA.cadera_d(:,2),   Datos.CA.cadera_d(:,3),   'r')
plot3(Datos.CA.cadera_i(:,1),   Datos.CA.cadera_i(:,2),   Datos.CA.cadera_i(:,3),   'b')

plot3(Datos.CA.davis_cadera_d(:,1),   Datos.CA.davis_cadera_d(:,2),   Datos.CA.davis_cadera_d(:,3),   'c')
plot3(Datos.CA.davis_cadera_i(:,1),   Datos.CA.davis_cadera_i(:,2),   Datos.CA.davis_cadera_i(:,3),   'm')

plot3(Datos.CA.rod_der(:,1),   Datos.CA.rod_der(:,2),   Datos.CA.rod_der(:,3),   'r')
plot3(Datos.CA.rod_izq(:,1),   Datos.CA.rod_izq(:,2),   Datos.CA.rod_izq(:,3),   'b')

plot3(Datos.CA.pie_tob_der(:,1),   Datos.CA.pie_tob_der(:,2),   Datos.CA.pie_tob_der(:,3),   'r')
plot3(Datos.CA.pie_tob_izq(:,1),   Datos.CA.pie_tob_izq(:,2),   Datos.CA.pie_tob_izq(:,3),   'b')

plot3(Datos.CA.pie_punta_der(:,1),   Datos.CA.pie_punta_der(:,2),   Datos.CA.pie_punta_der(:,3),   'r')
plot3(Datos.CA.pie_punta_izq(:,1),   Datos.CA.pie_punta_izq(:,2),   Datos.CA.pie_punta_izq(:,3),   'b')


end