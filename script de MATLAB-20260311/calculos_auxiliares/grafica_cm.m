function grafica_cm(Datos)


%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;


figure; hold on; grid on; axis equal; view(3);
title('Grafica de Centros de Masa');

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

plot3(Datos.CM.cad_der(:,1),   Datos.CM.cad_der(:,2),   Datos.CM.cad_der(:,3),   'g')
plot3(Datos.CM.cad_izq(:,1),   Datos.CM.cad_izq(:,2),   Datos.CM.cad_izq(:,3),   'm')

plot3(Datos.CM.pierna_der(:,1),   Datos.CM.pierna_der(:,2),   Datos.CM.pierna_der(:,3),   'g')
plot3(Datos.CM.pierna_izq(:,1),   Datos.CM.pierna_izq(:,2),   Datos.CM.pierna_izq(:,3),   'm')

plot3(Datos.CM.pie_der(:,1),   Datos.CM.pie_der(:,2),   Datos.CM.pie_der(:,3),   'g')
plot3(Datos.CM.pie_izq(:,1),   Datos.CM.pie_izq(:,2),   Datos.CM.pie_izq(:,3),   'm')



end