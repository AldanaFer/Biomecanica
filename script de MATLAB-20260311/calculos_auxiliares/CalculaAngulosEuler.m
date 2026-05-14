function Datos = CalculaAngulosEuler(Datos)

campos = fieldnames(Datos.sis_local);

for c = 1:length(campos)

    nombre = campos{c};

    % Saltear Davis
    if contains(lower(nombre),'davis')
        continue
    end

    i = Datos.sis_local.(nombre).i;
    j = Datos.sis_local.(nombre).j;
    k = Datos.sis_local.(nombre).k;

    %=========================== Calculo ===========================
    [alfasen, alfacos, ...
     betasen, betacos, ...
     gamasen, gamacos] = anguloeuler(i,j,k);

    %=========================== Seleccion final ===========================

    switch lower(nombre)

        %=========================== Pie izquierdo ===========================
        case 'pie_izq'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamacos;

        %=========================== Pie derecho ===========================
        case 'pie_der'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamacos;

        %=========================== Pierna izquierda ===========================
        case 'pierna_izq'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamacos;

        %=========================== Pierna derecha ===========================
        case 'pierna_der'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamacos;

        %=========================== Muslo izquierdo ===========================
        case 'muslo_izq'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamacos;

        %=========================== Muslo derecho ===========================
        case 'muslo_der'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamacos;

        %=========================== Pelvis ===========================
        case 'pelvis'

            Datos.euler.(nombre).alpha = alfasen;
            Datos.euler.(nombre).beta  = betacos;
            Datos.euler.(nombre).gamma = gamasen;

    end

end

end