function grafica_cm_centros_articulares(Datos)

CM = Datos.CM;
CA = Datos.CA;
f=50;
figure('Name','Centros de Masa y Centros Articulares');
hold on; grid on; axis equal; view(3);

xlabel('X');
ylabel('Y');
zlabel('Z');
title(['Frame: ' num2str(f)]);

%===========================Centros articulares===========================

cadera_d = CA.cadera_d(f,:);
cadera_i = CA.cadera_i(f,:);

rod_d = CA.rod_der(f,:);
rod_i = CA.rod_izq(f,:);

tob_d = CA.pie_tob_der(f,:);
tob_i = CA.pie_tob_izq(f,:);

punta_d = CA.pie_punta_der(f,:);
punta_i = CA.pie_punta_izq(f,:);

%===========================Centros de masa===========================

cm_cad_d = CM.cad_der(f,:);
cm_cad_i = CM.cad_izq(f,:);

cm_pierna_d = CM.pierna_der(f,:);
cm_pierna_i = CM.pierna_izq(f,:);

cm_pie_d = CM.pie_der(f,:);
cm_pie_i = CM.pie_izq(f,:);

%===========================Lineas negras===========================

plot3([cadera_d(1) cadera_i(1)], [cadera_d(2) cadera_i(2)], [cadera_d(3) cadera_i(3)], 'k', 'LineWidth', 2)

plot3([cadera_d(1) rod_d(1)], [cadera_d(2) rod_d(2)], [cadera_d(3) rod_d(3)], 'k', 'LineWidth', 2)
plot3([rod_d(1) tob_d(1)], [rod_d(2) tob_d(2)], [rod_d(3) tob_d(3)], 'k', 'LineWidth', 2)
plot3([tob_d(1) punta_d(1)], [tob_d(2) punta_d(2)], [tob_d(3) punta_d(3)], 'k', 'LineWidth', 2)

plot3([cadera_i(1) rod_i(1)], [cadera_i(2) rod_i(2)], [cadera_i(3) rod_i(3)], 'k', 'LineWidth', 2)
plot3([rod_i(1) tob_i(1)], [rod_i(2) tob_i(2)], [rod_i(3) tob_i(3)], 'k', 'LineWidth', 2)
plot3([tob_i(1) punta_i(1)], [tob_i(2) punta_i(2)], [tob_i(3) punta_i(3)], 'k', 'LineWidth', 2)

%===========================Centros articulares===========================

plot3(cadera_d(1), cadera_d(2), cadera_d(3), 'bo', 'MarkerFaceColor', 'b')
plot3(cadera_i(1), cadera_i(2), cadera_i(3), 'bo', 'MarkerFaceColor', 'b')

plot3(rod_d(1), rod_d(2), rod_d(3), 'bo', 'MarkerFaceColor', 'b')
plot3(rod_i(1), rod_i(2), rod_i(3), 'bo', 'MarkerFaceColor', 'b')

plot3(tob_d(1), tob_d(2), tob_d(3), 'bo', 'MarkerFaceColor', 'b')
plot3(tob_i(1), tob_i(2), tob_i(3), 'bo', 'MarkerFaceColor', 'b')

plot3(punta_d(1), punta_d(2), punta_d(3), 'bo', 'MarkerFaceColor', 'b')
plot3(punta_i(1), punta_i(2), punta_i(3), 'bo', 'MarkerFaceColor', 'b')

%===========================Centros de masa===========================

plot3(cm_cad_d(1), cm_cad_d(2), cm_cad_d(3), 'ro', 'MarkerFaceColor', 'r')
plot3(cm_cad_i(1), cm_cad_i(2), cm_cad_i(3), 'ro', 'MarkerFaceColor', 'r')

plot3(cm_pierna_d(1), cm_pierna_d(2), cm_pierna_d(3), 'ro', 'MarkerFaceColor', 'r')
plot3(cm_pierna_i(1), cm_pierna_i(2), cm_pierna_i(3), 'ro', 'MarkerFaceColor', 'r')

plot3(cm_pie_d(1), cm_pie_d(2), cm_pie_d(3), 'ro', 'MarkerFaceColor', 'r')
plot3(cm_pie_i(1), cm_pie_i(2), cm_pie_i(3), 'ro', 'MarkerFaceColor', 'r')

legend('Segmentos','Centros articulares','Centros de masa');

end