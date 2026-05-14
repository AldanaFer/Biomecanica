function grafica_gestos_por_registro(Datos)

registros = fieldnames(Datos);

for r = 1:length(registros)

    nombre_registro = registros{r};

    if ~isfield(Datos.(nombre_registro),'gestos')
        continue
    end

    gestos = fieldnames(Datos.(nombre_registro).gestos);

    figure;
    hold on; grid on; axis equal; view(3);

    title(['Gestos recortados - ' strrep(nombre_registro,'_','\_')]);
    xlabel('X [m]');
    ylabel('Y [m]');
    zlabel('Z [m]');

    colores = lines(length(gestos));

    for g = 1:length(gestos)

        nombre_gesto = gestos{g};
        marcadores = Datos.(nombre_registro).gestos.(nombre_gesto).marcadores;
        nombres_marcadores = fieldnames(marcadores);

        for m = 1:length(nombres_marcadores)

            nombre_marcador = nombres_marcadores{m};
            marcador = marcadores.(nombre_marcador);

            plot3(marcador(:,1), marcador(:,2), marcador(:,3), ...
                'Color', colores(g,:), ...
                'LineWidth', 1.2, ...
                'HandleVisibility','off');
        end

        % Solo para que aparezca una vez cada gesto en la leyenda
        plot3(nan,nan,nan, ...
            'Color', colores(g,:), ...
            'LineWidth', 2, ...
            'DisplayName', strrep(nombre_gesto,'_',' '));
    end

    legend('Location','bestoutside');

end

end