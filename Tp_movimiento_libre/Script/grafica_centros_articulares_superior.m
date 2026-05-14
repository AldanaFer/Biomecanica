function grafica_centros_articulares_superior(Datos)

registros = fieldnames(Datos);

for r = 1:length(registros)

    nombre_registro = registros{r};
    gestos = fieldnames(Datos.(nombre_registro).gestos);

    for g = 1:length(gestos)

        nombre_gesto = gestos{g};

        marcadores = Datos.(nombre_registro).gestos.(nombre_gesto).marcadores;
        CA = Datos.(nombre_registro).gestos.(nombre_gesto).CA;

        figure; hold on; grid on; axis equal; view(3);

        title(['Centros articulares - ' strrep(nombre_registro,'_','\_') ...
            ' - ' strrep(nombre_gesto,'_','\_')]);

        xlabel('X [m]');
        ylabel('Y [m]');
        zlabel('Z [m]');

        % Marcadores base
        plot3(marcadores.MarkerSet__R_AC(:,1), marcadores.MarkerSet__R_AC(:,2), marcadores.MarkerSet__R_AC(:,3), 'k');
        plot3(marcadores.MarkerSet__L_AC(:,1), marcadores.MarkerSet__L_AC(:,2), marcadores.MarkerSet__L_AC(:,3), 'k');

        plot3(marcadores.MarkerSet__R_EL(:,1), marcadores.MarkerSet__R_EL(:,2), marcadores.MarkerSet__R_EL(:,3), 'k');
        plot3(marcadores.MarkerSet__R_EM(:,1), marcadores.MarkerSet__R_EM(:,2), marcadores.MarkerSet__R_EM(:,3), 'k');

        plot3(marcadores.MarkerSet__L_EL(:,1), marcadores.MarkerSet__L_EL(:,2), marcadores.MarkerSet__L_EL(:,3), 'k');
        plot3(marcadores.MarkerSet__L_EM(:,1), marcadores.MarkerSet__L_EM(:,2), marcadores.MarkerSet__L_EM(:,3), 'k');

        plot3(marcadores.MarkerSet__R_US(:,1), marcadores.MarkerSet__R_US(:,2), marcadores.MarkerSet__R_US(:,3), 'k');
        plot3(marcadores.MarkerSet__R_RS(:,1), marcadores.MarkerSet__R_RS(:,2), marcadores.MarkerSet__R_RS(:,3), 'k');

        plot3(marcadores.MarkerSet__L_US(:,1), marcadores.MarkerSet__L_US(:,2), marcadores.MarkerSet__L_US(:,3), 'k');
        plot3(marcadores.MarkerSet__L_RS(:,1), marcadores.MarkerSet__L_RS(:,2), marcadores.MarkerSet__L_RS(:,3), 'k');

        % Centros articulares
        plot3(CA.GH_der(:,1), CA.GH_der(:,2), CA.GH_der(:,3), 'r', 'LineWidth', 2);
        plot3(CA.GH_izq(:,1), CA.GH_izq(:,2), CA.GH_izq(:,3), 'g', 'LineWidth', 2);

        plot3(CA.EJC_der(:,1), CA.EJC_der(:,2), CA.EJC_der(:,3), 'r--', 'LineWidth', 2);
        plot3(CA.EJC_izq(:,1), CA.EJC_izq(:,2), CA.EJC_izq(:,3), 'g--', 'LineWidth', 2);

        plot3(CA.OM_der(:,1), CA.OM_der(:,2), CA.OM_der(:,3), 'r:', 'LineWidth', 2);
        plot3(CA.OM_izq(:,1), CA.OM_izq(:,2), CA.OM_izq(:,3), 'g:', 'LineWidth', 2);

        legend('R AC','L AC','R EL','R EM','L EL','L EM','R US','R RS','L US','L RS', ...
               'GH der','GH izq','EJC der','EJC izq','OM der','OM izq', ...
               'Location','bestoutside');

    end
end

end