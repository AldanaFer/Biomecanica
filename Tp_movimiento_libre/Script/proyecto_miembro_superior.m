clear; clc; close all;

Datos = CargarRegistro();

Datos=filtra_y_recorta_gestos(Datos); 

grafica_gestos_por_registro(Datos); 

Datos=calcula_centros_articulares_superior(Datos); 
%grafica_centros_articulares_superior(Datos); 

Datos=calcula_sist_loc_superior(Datos); 
%grafica_sist_loc_superior(Datos); 

Datos=calcula_ang_superior(Datos); 
grafica_angulos_superior(Datos); 