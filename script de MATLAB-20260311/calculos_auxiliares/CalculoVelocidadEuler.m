function Datos = CalculoVelocidadEuler(Datos)

fm=Datos.info.Cinematica.frequency;

campos = fieldnames(Datos.euler);

for c = 1:length(campos)

    nombre = campos{c};

    %=========================== Angulos ===========================
    alpha = Datos.euler.(nombre).alpha;
    beta  = Datos.euler.(nombre).beta;
    gamma = Datos.euler.(nombre).gamma;

    %=========================== Derivadas ===========================
    [deralpha, derbeta, dergamma] = derivadas(alpha,beta,gamma,fm);

    %=========================== Velocidades angulares ===========================
    [wx,wy,wz] = velocidadangularsegmento( ...
                    alpha, deralpha, ...
                    beta,  derbeta, ...
                    gamma, dergamma);

    %=========================== Guardado ===========================
    Datos.vel_angular.(nombre).wx = wx;
    Datos.vel_angular.(nombre).wy = wy;
    Datos.vel_angular.(nombre).wz = wz;

end

end