function Datos = cargar_registro()

archivos = {
    'saque_lateral_000.c3d'
    'saque_lateral_001.c3d'
    'saque_lateral_002.c3d'
};

Datos = struct();

for a = 1:length(archivos)

    nombre_archivo = archivos{a};

    [marcadores,informacionCine,fileName] = leer_c3d(nombre_archivo);

    nombre_campo = erase(nombre_archivo,'.c3d');

    Datos.(nombre_campo).marcadores = marcadores.Valores;
    Datos.(nombre_campo).freq = marcadores.Frecuencia;
    Datos.(nombre_campo).unidades = marcadores.Unidades;
    Datos.(nombre_campo).info = informacionCine;
    Datos.(nombre_campo).fileName = fileName;

end

save('Datos_miembro_superior.mat','Datos');

end