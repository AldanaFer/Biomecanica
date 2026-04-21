clc; close all; clear all; 
%SCG: sistema de coordenadas global
%LTO despege de pie izquierdo 
%RTO despege de pie derecho 
%LHS primer contacto pie izqueirdo 
%RHS primer contacto pie derecho 

[Datos,Archivo] = CargarRegistro();

[DerechaPlataforma1,PrimerFrame,UltimoFrame,FrameRHS1,FrameLHS1,FrameRHS2,FrameLHS2,FrameRTO,FrameLTO] = Ciclo2Pasos(Datos);

AntesHS = 10;
DespuesHS = 10;

Datos = RecortaDatos(Datos, PrimerFrame-AntesHS, UltimoFrame+DespuesHS);


%Valores de LHS, LTO, RHS y RTO luego del recorte.
frameLHS1_recorte=FrameLHS1- PrimerFrame+AntesHS;
frameLHS2_recorte=FrameLHS2- PrimerFrame+AntesHS;
frameLTO_recorte=FrameLTO- PrimerFrame+AntesHS;

frameRHS1_recorte=FrameRHS1- PrimerFrame+AntesHS;
frameRHS2_recorte=FrameRHS2- PrimerFrame+AntesHS;
frameRTO_recorte=FrameRTO- PrimerFrame+AntesHS;

Datos = calculo_uvw(Datos);
Datos = centro_articular(Datos); 
Datos = calculo_cm(Datos);
Datos = calculo_ijk(Datos);
Datos = calculo_angulos(Datos); 

%grafica_uvw(Datos);
%grafica_centro_articular(Datos);
%grafica_cm(Datos);
grafica_ijk(Datos);
%grafica_angulos(Datos,frameLHS1_recorte,frameLHS2_recorte,frameLTO_recorte,frameRHS1_recorte,frameRHS2_recorte,frameRTO_recorte);

%===================AHORA CON LOS DATOS FILTRADOS=======================
fm=Datos.info.Cinematica.frequency;
frec_corte=10; 
Orden=2;
primer_frame_recortado=AntesHS;
ultimo_frame_recortado = UltimoFrame-PrimerFrame+AntesHS; %Preguntar porque anda

Datos=Filtrar_Marcadores(Datos,fm,frec_corte,Orden,primer_frame_recortado,ultimo_frame_recortado);
Datos = calculo_uvw(Datos);
Datos = centro_articular(Datos); 
Datos = calculo_cm(Datos);
Datos = calculo_ijk(Datos);
Datos = calculo_angulos(Datos); 

%grafica_uvw(Datos);
%grafica_centro_articular(Datos);
%grafica_cm(Datos);
grafica_ijk(Datos);
%grafica_angulos(Datos,frameLHS1_recorte,frameLHS2_recorte,frameLTO_recorte,frameRHS1_recorte,frameRHS2_recorte,frameRTO_recorte);
