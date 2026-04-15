
function grafica_ijk(Datos)

%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;

cm = Datos.CM;
sis = Datos.sis_local;

n_muestras = length(val.sacrum);
esc = 0.1;

%==========================================================
% PELVIS
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Pelvis - i, j y k');

for a = 1:10:n_muestras
    origen = val.sacrum(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.pelvis.i(a,1), esc*sis.pelvis.i(a,2), esc*sis.pelvis.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pelvis.j(a,1), esc*sis.pelvis.j(a,2), esc*sis.pelvis.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pelvis.k(a,1), esc*sis.pelvis.k(a,2), esc*sis.pelvis.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')


%==========================================================
% MUSLO DERECHO
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Muslo derecho - i, j y k');

for a = 1:10:n_muestras
    origen = cm.cad_der(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.muslo_der.i(a,1), esc*sis.muslo_der.i(a,2), esc*sis.muslo_der.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.muslo_der.j(a,1), esc*sis.muslo_der.j(a,2), esc*sis.muslo_der.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.muslo_der.k(a,1), esc*sis.muslo_der.k(a,2), esc*sis.muslo_der.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')


%==========================================================
% MUSLO IZQUIERDO
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Muslo izquierdo - i, j y k');

for a = 1:10:n_muestras
    origen = cm.cad_izq(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.muslo_izq.i(a,1), esc*sis.muslo_izq.i(a,2), esc*sis.muslo_izq.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.muslo_izq.j(a,1), esc*sis.muslo_izq.j(a,2), esc*sis.muslo_izq.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.muslo_izq.k(a,1), esc*sis.muslo_izq.k(a,2), esc*sis.muslo_izq.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')


%==========================================================
% PIERNA DERECHA
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Pierna derecha - i, j y k');

for a = 1:10:n_muestras
    origen = cm.pierna_der(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.pierna_der.i(a,1), esc*sis.pierna_der.i(a,2), esc*sis.pierna_der.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pierna_der.j(a,1), esc*sis.pierna_der.j(a,2), esc*sis.pierna_der.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pierna_der.k(a,1), esc*sis.pierna_der.k(a,2), esc*sis.pierna_der.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')


%==========================================================
% PIERNA IZQUIERDA
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Pierna izquierda - i, j y k');

for a = 1:10:n_muestras
    origen = cm.pierna_izq(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.pierna_izq.i(a,1), esc*sis.pierna_izq.i(a,2), esc*sis.pierna_izq.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pierna_izq.j(a,1), esc*sis.pierna_izq.j(a,2), esc*sis.pierna_izq.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pierna_izq.k(a,1), esc*sis.pierna_izq.k(a,2), esc*sis.pierna_izq.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')


%==========================================================
% PIE DERECHO
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Pie derecho - i, j y k');

for a = 1:10:n_muestras
    origen = cm.pie_der(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.pie_der.i(a,1), esc*sis.pie_der.i(a,2), esc*sis.pie_der.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pie_der.j(a,1), esc*sis.pie_der.j(a,2), esc*sis.pie_der.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pie_der.k(a,1), esc*sis.pie_der.k(a,2), esc*sis.pie_der.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')


%==========================================================
% PIE IZQUIERDO
%==========================================================
figure; hold on; grid on; axis equal; view(3);
title('Pie izquierdo - i, j y k');

for a = 1:10:n_muestras
    origen = cm.pie_izq(a,:);
    
    quiver3(origen(1), origen(2), origen(3), esc*sis.pie_izq.i(a,1), esc*sis.pie_izq.i(a,2), esc*sis.pie_izq.i(a,3), 0, 'r', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pie_izq.j(a,1), esc*sis.pie_izq.j(a,2), esc*sis.pie_izq.j(a,3), 0, 'g', 'LineWidth', 1.5)
    quiver3(origen(1), origen(2), origen(3), esc*sis.pie_izq.k(a,1), esc*sis.pie_izq.k(a,2), esc*sis.pie_izq.k(a,3), 0, 'b', 'LineWidth', 1.5)
end

xlabel('X')
ylabel('Y')
zlabel('Z')

end