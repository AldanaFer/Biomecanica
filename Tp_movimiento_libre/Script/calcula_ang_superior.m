function Datos = calcula_ang_superior(Datos)

registros = fieldnames(Datos);

for r = 1:length(registros)

    nombre_registro = registros{r};
    gestos = fieldnames(Datos.(nombre_registro).gestos);

    for g = 1:length(gestos)

        nombre_gesto = gestos{g};

        sis = Datos.(nombre_registro).gestos.(nombre_gesto).sis_local;

        %================ DATOS TORAX =================

        XT = sis.torax.i;
        YT = sis.torax.j;
        ZT = sis.torax.k;

        %================ HOMBRO DERECHO =================

        XH_der = sis.humero_der.i;
        YH_der = sis.humero_der.j;
        ZH_der = sis.humero_der.k;

        I_hombro_der = cross(YH_der,YT);
        aux = sqrt(sum(I_hombro_der.*I_hombro_der,2));
        I_hombro_der = I_hombro_der./[aux,aux,aux];

        signo_alpha_der = dot(I_hombro_der,-ZT,2)./abs(dot(I_hombro_der,-ZT,2));
        alpha_der = acosd(dot(I_hombro_der,XT,2)).*signo_alpha_der;

        beta_der = acosd(dot(YH_der,YT,2));

        signo_gamma_der = dot(I_hombro_der,ZH_der,2)./abs(dot(I_hombro_der,ZH_der,2));
        gamma_der = acosd(dot(XH_der,I_hombro_der,2)).*signo_gamma_der;

        %================ HOMBRO IZQUIERDO =================

        XH_izq = sis.humero_izq.i;
        YH_izq = sis.humero_izq.j;
        ZH_izq = sis.humero_izq.k;

        I_hombro_izq = cross(YH_izq,YT);
        aux = sqrt(sum(I_hombro_izq.*I_hombro_izq,2));
        I_hombro_izq = I_hombro_izq./[aux,aux,aux];

        signo_alpha_izq = dot(I_hombro_izq,-ZT,2)./abs(dot(I_hombro_izq,-ZT,2));
        alpha_izq = acosd(dot(I_hombro_izq,-XT,2)).*signo_alpha_izq;

        beta_izq = acosd(dot(YH_izq,YT,2));

        signo_gamma_izq = dot(I_hombro_izq,ZH_izq,2)./abs(dot(I_hombro_izq,ZH_izq,2));
        gamma_izq = acosd(dot(XH_izq,I_hombro_izq,2)).*signo_gamma_izq;

        %================ GUARDAR =================

        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.hombro_der.alpha = alpha_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.hombro_der.beta = beta_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.hombro_der.gamma = gamma_der;

        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.hombro_izq.alpha = alpha_izq;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.hombro_izq.beta = beta_izq;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.hombro_izq.gamma = gamma_izq;
        
        %================ CODO DERECHO =================

        XH_der = sis.humero_der.i;
        YH_der = sis.humero_der.j;
        ZH_der = sis.humero_der.k;

        XA_der = sis.antebrazo_der.i;
        YA_der = sis.antebrazo_der.j;

        I_codo_der = cross(ZH_der,YA_der);
        aux = sqrt(sum(I_codo_der.*I_codo_der,2));
        I_codo_der = I_codo_der./[aux,aux,aux];

        signo_alpha_codo_der = dot(I_codo_der,YH_der,2)./abs(dot(I_codo_der,YH_der,2));
        alpha_codo_der = -acosd(dot(-I_codo_der,XH_der,2)).*signo_alpha_codo_der;

        signo_gamma_codo_der = dot(XA_der,ZH_der,2)./abs(dot(XA_der,ZH_der,2));
        gamma_codo_der = -acosd(dot(-I_codo_der,XA_der,2)).*signo_gamma_codo_der;

        beta_codo_der = asind(dot(ZH_der,YA_der,2));

        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.codo_der.alpha = alpha_codo_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.codo_der.beta = beta_codo_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.codo_der.gamma = gamma_codo_der;


        %================ CODO IZQUIERDO =================

        XH_izq = sis.humero_izq.i;
        YH_izq = sis.humero_izq.j;
        ZH_izq = sis.humero_izq.k;

        XA_izq = sis.antebrazo_izq.i;
        YA_izq = sis.antebrazo_izq.j;

        I_codo_izq = cross(ZH_izq,YA_izq);
        aux = sqrt(sum(I_codo_izq.*I_codo_izq,2));
        I_codo_izq = I_codo_izq./[aux,aux,aux];

        signo_alpha_codo_izq = dot(I_codo_izq,YH_izq,2)./abs(dot(I_codo_izq,YH_izq,2));
        alpha_codo_izq = -acosd(dot(-I_codo_izq,XH_izq,2)).*signo_alpha_codo_izq;

        signo_gamma_codo_izq = dot(XA_izq,ZH_izq,2)./abs(dot(XA_izq,ZH_izq,2));
        gamma_codo_izq = acosd(dot(-I_codo_izq,XA_izq,2)).*signo_gamma_codo_izq;

        beta_codo_izq = -asind(dot(ZH_izq,YA_izq,2));

        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.codo_izq.alpha = alpha_codo_izq;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.codo_izq.beta = beta_codo_izq;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.codo_izq.gamma = gamma_codo_izq;
        
        %================ MUÑECA DERECHA =================

        XA_der = sis.antebrazo_der.i;
        YA_der = sis.antebrazo_der.j;
        ZA_der = sis.antebrazo_der.k;

        XM_der = sis.mano_der.i;
        YM_der = sis.mano_der.j;

        I_muneca_der = cross(ZA_der,YM_der);
        aux = sqrt(sum(I_muneca_der.*I_muneca_der,2));
        I_muneca_der = I_muneca_der./[aux,aux,aux];

        signo_alpha_muneca_der = dot(I_muneca_der,YA_der,2)./abs(dot(I_muneca_der,YA_der,2));
        alpha_muneca_der = -acosd(dot(-I_muneca_der,XA_der,2)).*signo_alpha_muneca_der;

        signo_gamma_muneca_der = dot(XM_der,ZA_der,2)./abs(dot(XM_der,ZA_der,2));
        gamma_muneca_der = -acosd(dot(-I_muneca_der,XM_der,2)).*signo_gamma_muneca_der;

        beta_muneca_der = asind(dot(ZA_der,YM_der,2));

        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.muneca_der.alpha = alpha_muneca_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.muneca_der.beta = beta_muneca_der;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.muneca_der.gamma = gamma_muneca_der;

        %================ MUÑECA IZQUIERDA =================

        XA_izq = sis.antebrazo_izq.i;
        YA_izq = sis.antebrazo_izq.j;
        ZA_izq = sis.antebrazo_izq.k;

        XM_izq = sis.mano_izq.i;
        YM_izq = sis.mano_izq.j;

        I_muneca_izq = cross(ZA_izq,YM_izq);
        aux = sqrt(sum(I_muneca_izq.*I_muneca_izq,2));
        I_muneca_izq = I_muneca_izq./[aux,aux,aux];

        signo_alpha_muneca_izq = dot(I_muneca_izq,YA_izq,2)./abs(dot(I_muneca_izq,YA_izq,2));
        alpha_muneca_izq = -acosd(dot(-I_muneca_izq,XA_izq,2)).*signo_alpha_muneca_izq;

        signo_gamma_muneca_izq = dot(XM_izq,ZA_izq,2)./abs(dot(XM_izq,ZA_izq,2));
        gamma_muneca_izq = acosd(dot(-I_muneca_izq,XM_izq,2)).*signo_gamma_muneca_izq;

        beta_muneca_izq = -asind(dot(ZA_izq,YM_izq,2));

        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.muneca_izq.alpha = alpha_muneca_izq;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.muneca_izq.beta = beta_muneca_izq;
        Datos.(nombre_registro).gestos.(nombre_gesto).angulos.muneca_izq.gamma = gamma_muneca_izq;
        
    end
end

end