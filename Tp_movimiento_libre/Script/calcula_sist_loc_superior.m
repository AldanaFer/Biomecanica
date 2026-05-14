function Datos = calcula_sist_loc_superior(Datos)

registros = fieldnames(Datos);

for r = 1:length(registros)

    nombre_registro = registros{r};
    gestos = fieldnames(Datos.(nombre_registro).gestos);

    for g = 1:length(gestos)

        nombre_gesto = gestos{g};
        val = Datos.(nombre_registro).gestos.(nombre_gesto).marcadores;
        CA = Datos.(nombre_registro).gestos.(nombre_gesto).CA;

        %================ PELVIS =================

        R_ASIS = val.MarkerSet__R_ASIS;
        L_ASIS = val.MarkerSet__L_ASIS;
        SACRUM = val.MarkerSet__SACRUM;

        pelvis_k = R_ASIS - L_ASIS;
        aux = sqrt(sum(pelvis_k.*pelvis_k,2));
        pelvis_k = pelvis_k./[aux,aux,aux];

        pelvis_j = cross((SACRUM - L_ASIS),(R_ASIS - L_ASIS));
        aux = sqrt(sum(pelvis_j.*pelvis_j,2));
        pelvis_j = pelvis_j./[aux,aux,aux];

        pelvis_i = cross(pelvis_j,pelvis_k);
        aux = sqrt(sum(pelvis_i.*pelvis_i,2));
        pelvis_i = pelvis_i./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.pelvis.i = pelvis_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.pelvis.j = pelvis_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.pelvis.k = pelvis_k;

        %================ TORAX =================

        IJ = val.MarkerSet__IJ;
        C7 = val.MarkerSet__C7;
        PX = val.MarkerSet__AX;
        T8 = val.MarkerSet__T8;

        punto_sup = (IJ + C7)/2;
        punto_inf = (PX + T8)/2;

        torax_j = punto_sup - punto_inf;
        aux = sqrt(sum(torax_j.*torax_j,2));
        torax_j = torax_j./[aux,aux,aux];

        torax_k = cross((C7 - IJ),(punto_inf - IJ));
        aux = sqrt(sum(torax_k.*torax_k,2));
        torax_k = torax_k./[aux,aux,aux];

        torax_i = cross(torax_j,torax_k);
        aux = sqrt(sum(torax_i.*torax_i,2));
        torax_i = torax_i./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.torax.i = torax_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.torax.j = torax_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.torax.k = torax_k;
        
       
        %================ ANTEBRAZO DERECHO =================

        USR = val.MarkerSet__R_US;
        RSR = val.MarkerSet__R_RS;

        antebrazo_der_j = CA.EJC_der - USR;
        aux = sqrt(sum(antebrazo_der_j.*antebrazo_der_j,2));
        antebrazo_der_j = antebrazo_der_j./[aux,aux,aux];

        antebrazo_der_i = cross(antebrazo_der_j,(RSR - USR));
        aux = sqrt(sum(antebrazo_der_i.*antebrazo_der_i,2));
        antebrazo_der_i = antebrazo_der_i./[aux,aux,aux];

        antebrazo_der_k = cross(antebrazo_der_i,antebrazo_der_j);
        aux = sqrt(sum(antebrazo_der_k.*antebrazo_der_k,2));
        antebrazo_der_k = antebrazo_der_k./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.antebrazo_der.i = antebrazo_der_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.antebrazo_der.j = antebrazo_der_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.antebrazo_der.k = antebrazo_der_k;

        %================ ANTEBRAZO IZQUIERDO =================

        USL = val.MarkerSet__L_US;
        RSL = val.MarkerSet__L_RS;

        antebrazo_izq_j = CA.EJC_izq - USL;
        aux = sqrt(sum(antebrazo_izq_j.*antebrazo_izq_j,2));
        antebrazo_izq_j = antebrazo_izq_j./[aux,aux,aux];

        antebrazo_izq_i = cross((RSL - USL),antebrazo_izq_j);
        aux = sqrt(sum(antebrazo_izq_i.*antebrazo_izq_i,2));
        antebrazo_izq_i = antebrazo_izq_i./[aux,aux,aux];

        antebrazo_izq_k = cross(antebrazo_izq_i,antebrazo_izq_j);
        aux = sqrt(sum(antebrazo_izq_k.*antebrazo_izq_k,2));
        antebrazo_izq_k = antebrazo_izq_k./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.antebrazo_izq.i = antebrazo_izq_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.antebrazo_izq.j = antebrazo_izq_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.antebrazo_izq.k = antebrazo_izq_k;
        
        %================ HUMERO DERECHO =================

        humero_der_j = CA.GH_der - CA.EJC_der;
        aux = sqrt(sum(humero_der_j.*humero_der_j,2));
        humero_der_j = humero_der_j./[aux,aux,aux];

        humero_der_k = cross(humero_der_j,antebrazo_der_j);
        aux = sqrt(sum(humero_der_k.*humero_der_k,2));
        humero_der_k = humero_der_k./[aux,aux,aux];

        humero_der_i = cross(humero_der_j,humero_der_k);
        aux = sqrt(sum(humero_der_i.*humero_der_i,2));
        humero_der_i = humero_der_i./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.humero_der.i = humero_der_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.humero_der.j = humero_der_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.humero_der.k = humero_der_k;

        %================ HUMERO IZQUIERDO =================

        humero_izq_j = CA.GH_izq - CA.EJC_izq;
        aux = sqrt(sum(humero_izq_j.*humero_izq_j,2));
        humero_izq_j = humero_izq_j./[aux,aux,aux];

        humero_izq_k = cross(humero_izq_j,antebrazo_izq_j);
        aux = sqrt(sum(humero_izq_k.*humero_izq_k,2));
        humero_izq_k = humero_izq_k./[aux,aux,aux];

        humero_izq_i = cross(humero_izq_j,humero_izq_k);
        aux = sqrt(sum(humero_izq_i.*humero_izq_i,2));
        humero_izq_i = humero_izq_i./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.humero_izq.i = humero_izq_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.humero_izq.j = humero_izq_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.humero_izq.k = humero_izq_k;

        %================ MANO DERECHA =================

        MH2R = val.MarkerSet__R_MCP2;
        MH5R = val.MarkerSet__R_MCP5;

        punto_mano_der = (MH2R + MH5R)/2;

        mano_der_j = CA.OM_der - punto_mano_der;
        aux = sqrt(sum(mano_der_j.*mano_der_j,2));
        mano_der_j = mano_der_j./[aux,aux,aux];

        mano_der_i = cross((MH2R - CA.OM_der),(MH5R - CA.OM_der));
        aux = sqrt(sum(mano_der_i.*mano_der_i,2));
        mano_der_i = mano_der_i./[aux,aux,aux];

        mano_der_k = cross(mano_der_i,mano_der_j);
        aux = sqrt(sum(mano_der_k.*mano_der_k,2));
        mano_der_k = mano_der_k./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.mano_der.i = mano_der_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.mano_der.j = mano_der_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.mano_der.k = mano_der_k;

        %================ MANO IZQUIERDA =================

        MH2L = val.MarkerSet__L_MCP2;
        MH5L = val.MarkerSet__L_MCP5;

        punto_mano_izq = (MH2L + MH5L)/2;

        mano_izq_j = CA.OM_izq - punto_mano_izq;
        aux = sqrt(sum(mano_izq_j.*mano_izq_j,2));
        mano_izq_j = mano_izq_j./[aux,aux,aux];

        mano_izq_i = cross((MH5L - CA.OM_izq),(MH2L - CA.OM_izq));
        aux = sqrt(sum(mano_izq_i.*mano_izq_i,2));
        mano_izq_i = mano_izq_i./[aux,aux,aux];

        mano_izq_k = cross(mano_izq_i,mano_izq_j);
        aux = sqrt(sum(mano_izq_k.*mano_izq_k,2));
        mano_izq_k = mano_izq_k./[aux,aux,aux];

        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.mano_izq.i = mano_izq_i;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.mano_izq.j = mano_izq_j;
        Datos.(nombre_registro).gestos.(nombre_gesto).sis_local.mano_izq.k = mano_izq_k;

    end
end

end