function grafica_sist_loc_superior(Datos)

registros = fieldnames(Datos);

esc = 0.15;   % escala de los ejes

for r = 1:length(registros)

    nombre_registro = registros{r};
    gestos = fieldnames(Datos.(nombre_registro).gestos);

    for g = 1:length(gestos)

        nombre_gesto = gestos{g};

        val = Datos.(nombre_registro).gestos.(nombre_gesto).marcadores;
        CA = Datos.(nombre_registro).gestos.(nombre_gesto).CA;
        sis = Datos.(nombre_registro).gestos.(nombre_gesto).sis_local;

        figure; hold on; grid on; axis equal; view(3);

        title(['Sistemas locales - ' strrep(nombre_registro,'_','\_') ...
            ' - ' strrep(nombre_gesto,'_','\_')]);

        xlabel('X [m]');
        ylabel('Y [m]');
        zlabel('Z [m]');

        %================ ORIGENES =================

        O_pelvis = val.MarkerSet__SACRUM;
        O_torax = val.MarkerSet__IJ;

        O_humero_der = CA.GH_der;
        O_humero_izq = CA.GH_izq;

        O_antebrazo_der = val.MarkerSet__R_US;
        O_antebrazo_izq = val.MarkerSet__L_US;

        O_mano_der = CA.OM_der;
        O_mano_izq = CA.OM_izq;

        % uso un frame intermedio para no llenar la figura
        paso = round(size(O_torax,1)/10);
        if paso < 1
            paso = 1;
        end

        frames = 1:paso:size(O_torax,1);

        for f = frames

            %================ PELVIS =================
            graficar_ejes(O_pelvis(f,:), sis.pelvis.i(f,:), sis.pelvis.j(f,:), sis.pelvis.k(f,:), esc);

            %================ TORAX =================
            graficar_ejes(O_torax(f,:), sis.torax.i(f,:), sis.torax.j(f,:), sis.torax.k(f,:), esc);

            %================ HUMERO DERECHO =================
            graficar_ejes(O_humero_der(f,:), sis.humero_der.i(f,:), sis.humero_der.j(f,:), sis.humero_der.k(f,:), esc);

            %================ HUMERO IZQUIERDO =================
            graficar_ejes(O_humero_izq(f,:), sis.humero_izq.i(f,:), sis.humero_izq.j(f,:), sis.humero_izq.k(f,:), esc);

            %================ ANTEBRAZO DERECHO =================
            graficar_ejes(O_antebrazo_der(f,:), sis.antebrazo_der.i(f,:), sis.antebrazo_der.j(f,:), sis.antebrazo_der.k(f,:), esc);

            %================ ANTEBRAZO IZQUIERDO =================
            graficar_ejes(O_antebrazo_izq(f,:), sis.antebrazo_izq.i(f,:), sis.antebrazo_izq.j(f,:), sis.antebrazo_izq.k(f,:), esc);

            %================ MANO DERECHA =================
            graficar_ejes(O_mano_der(f,:), sis.mano_der.i(f,:), sis.mano_der.j(f,:), sis.mano_der.k(f,:), esc);

            %================ MANO IZQUIERDA =================
            graficar_ejes(O_mano_izq(f,:), sis.mano_izq.i(f,:), sis.mano_izq.j(f,:), sis.mano_izq.k(f,:), esc);

        end

    end
end

end


function graficar_ejes(O,i,j,k,esc)

quiver3(O(1),O(2),O(3), esc*i(1),esc*i(2),esc*i(3), ...
    'r','LineWidth',1.5,'MaxHeadSize',0.5);

quiver3(O(1),O(2),O(3), esc*j(1),esc*j(2),esc*j(3), ...
    'g','LineWidth',1.5,'MaxHeadSize',0.5);

quiver3(O(1),O(2),O(3), esc*k(1),esc*k(2),esc*k(3), ...
    'b','LineWidth',1.5,'MaxHeadSize',0.5);

end