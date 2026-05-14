function Datos = calcula_centros_articulares_superior(Datos)

registros = fieldnames(Datos);

for r = 1:length(registros)

    nombre_registro = registros{r};
    gestos = fieldnames(Datos.(nombre_registro).gestos);

    for g = 1:length(gestos)

        nombre_gesto = gestos{g};

        marcadores = Datos.(nombre_registro).gestos.(nombre_gesto).marcadores;

        %======================= CODO =======================

        EJC_der = (marcadores.MarkerSet__R_EL + marcadores.MarkerSet__R_EM)/2;
        EJC_izq = (marcadores.MarkerSet__L_EL + marcadores.MarkerSet__L_EM)/2;

        %====================== MUÑECA ======================

        OM_der = (marcadores.MarkerSet__R_US + marcadores.MarkerSet__R_RS)/2;
        OM_izq = (marcadores.MarkerSet__L_US + marcadores.MarkerSet__L_RS)/2;

        %======================= GH =========================

        GHx_aux = (marcadores.MarkerSet__R_AC - marcadores.MarkerSet__L_AC) ./ ...
            vecnorm(marcadores.MarkerSet__R_AC - marcadores.MarkerSet__L_AC,2,2);

        GHaux = (marcadores.MarkerSet__C7 - marcadores.MarkerSet__L_AC) ./ ...
            vecnorm(marcadores.MarkerSet__C7 - marcadores.MarkerSet__L_AC,2,2);

        GHy_aux = cross(GHaux,GHx_aux,2);

        GHy_aux = GHy_aux ./ vecnorm(GHy_aux,2,2);

        dist_ac = vecnorm( ...
            marcadores.MarkerSet__R_AC - marcadores.MarkerSet__L_AC, ...
            2,2);

        GH_der = marcadores.MarkerSet__R_AC ...
            - 0.17 .* dist_ac .* GHy_aux;

        GH_izq = marcadores.MarkerSet__L_AC ...
            - 0.17 .* dist_ac .* GHy_aux;

        %======================= GUARDAR =========================

        Datos.(nombre_registro).gestos.(nombre_gesto).CA.EJC_der = EJC_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).CA.EJC_izq = EJC_izq;

        Datos.(nombre_registro).gestos.(nombre_gesto).CA.OM_der = OM_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).CA.OM_izq = OM_izq;

        Datos.(nombre_registro).gestos.(nombre_gesto).CA.GH_der = GH_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).CA.GH_izq = GH_izq;

    end
end

end