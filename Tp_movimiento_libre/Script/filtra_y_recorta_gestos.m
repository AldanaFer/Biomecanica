function Datos = filtra_y_recorta_gestos(Datos)

eventos = readmatrix(fullfile('..','eventos.xlsx'));

registros = fieldnames(Datos);

frec_corte = 10;
Orden = 2;

for r = 1:length(registros)

    nombre_registro = registros{r};

    marcadores = Datos.(nombre_registro).marcadores;
    fs = Datos.(nombre_registro).freq;

    nombres_marcadores = fieldnames(marcadores);

    %================ Estructura auxiliar para usar Filtrar_Marcadores =================
    DatosAux.Pasada.Marcadores.Crudos.Valores = marcadores;

    primer_frame = 1;

    marcador_aux = marcadores.(nombres_marcadores{1});
    ultimo_frame = size(marcador_aux,1);

    %================ Filtrado =================
    DatosAux = Filtrar_Marcadores( ...
        DatosAux, ...
        fs, ...
        frec_corte, ...
        Orden, ...
        primer_frame, ...
        ultimo_frame);

    marcadores_filtrados = DatosAux.Pasada.Marcadores.Crudos.Valores;

    Datos.(nombre_registro).marcadores_filtrados = marcadores_filtrados;

    %================ Recorte por gesto =================
    fila_eventos = eventos(r,:);

    for g = 1:9

        col_ini = 2*g;
        col_fin = 2*g + 1;

        frame_ini = fila_eventos(col_ini);
        frame_fin = fila_eventos(col_fin);

        if isnan(frame_ini) || isnan(frame_fin)
            continue
        end

        frame_ini = round(frame_ini);
        frame_fin = round(frame_fin);

        nombre_gesto = ['gesto_' num2str(g)];

        Datos.(nombre_registro).gestos.(nombre_gesto).frame_ini = frame_ini;
        Datos.(nombre_registro).gestos.(nombre_gesto).frame_fin = frame_fin;

        for m = 1:length(nombres_marcadores)

            nombre_marcador = nombres_marcadores{m};

            marcador = marcadores_filtrados.(nombre_marcador);

            Datos.(nombre_registro).gestos.(nombre_gesto).marcadores.(nombre_marcador) = ...
                marcador(frame_ini:frame_fin,:);

        end
    end
end

end