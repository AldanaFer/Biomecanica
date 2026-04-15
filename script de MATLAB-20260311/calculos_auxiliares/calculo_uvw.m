function Datos = calculo_uvw(Datos)

%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;
marcadores = { ...
    'r_met', 'r_heel', 'r_mall', 'r_bar_2', 'r_knee_1', 'r_bar_1', 'r_asis', ...
    'l_met', 'l_heel', 'l_mall', 'l_bar_2', 'l_knee_1', 'l_bar_1', 'l_asis', ...
    'sacrum'};

for k = 1:length(marcadores)
    eval(sprintf('p%d = val.(marcadores{k});', k));
end

%=======================================PELVIS=======================================

v_pelvis=p14-p7;  aux=sqrt(sum(v_pelvis.*v_pelvis,2)); v_pelvis=v_pelvis./[aux,aux,aux]; 
w_pelvis=cross((p7-p15),(p14-p15));  aux=sqrt(sum(w_pelvis.*w_pelvis,2)); w_pelvis=w_pelvis./[aux,aux,aux];
u_pelvis=cross(v_pelvis,w_pelvis); 

Datos.SCL.pelvis.u=u_pelvis;   
Datos.SCL.pelvis.v=v_pelvis;   
Datos.SCL.pelvis.w=w_pelvis;   

%====================================PIERNA DERECHA====================================

v_pierna_der=p3-p5;  aux=sqrt(sum(v_pierna_der.*v_pierna_der,2));  v_pierna_der=v_pierna_der./[aux,aux,aux]; 
u_pierna_der=cross((p4-p5),(p3-p5));  aux=sqrt(sum(u_pierna_der.*u_pierna_der,2)); u_pierna_der=u_pierna_der./[aux,aux,aux];
w_pierna_der=cross(u_pierna_der,v_pierna_der); 

Datos.SCL.pierna_der.u=u_pierna_der;   
Datos.SCL.pierna_der.v=v_pierna_der;   
Datos.SCL.pierna_der.w=w_pierna_der;   

%====================================PIERNA IZQUIERDA====================================

v_pierna_izq=p10-p12;  aux=sqrt(sum(v_pierna_izq.*v_pierna_izq,2)); v_pierna_izq=v_pierna_izq./[aux,aux,aux]; 
u_pierna_izq=cross((p10-p12),(p11-p12));  aux=sqrt(sum(u_pierna_izq.*u_pierna_izq,2)); u_pierna_izq=u_pierna_izq./[aux,aux,aux];
w_pierna_izq=cross(u_pierna_izq,v_pierna_izq); 

Datos.SCL.pierna_izq.u=u_pierna_izq;   
Datos.SCL.pierna_izq.v=v_pierna_izq;   
Datos.SCL.pierna_izq.w=w_pierna_izq;   

%====================================PIE DERECHO=====================================

u_pie_der=p1-p2;  aux=sqrt(sum(u_pie_der.*u_pie_der,2)); u_pie_der=u_pie_der./[aux,aux,aux]; 
w_pie_der=cross((p1-p3),(p2-p3));  aux=sqrt(sum(w_pie_der.*w_pie_der,2)); w_pie_der=w_pie_der./[aux,aux,aux];
v_pie_der=cross(w_pie_der,u_pie_der); 

Datos.SCL.pie_der.u=u_pie_der;   
Datos.SCL.pie_der.v=v_pie_der;   
Datos.SCL.pie_der.w=w_pie_der;   

%====================================PIE IZQUIERDO====================================

u_pie_izq=p8-p9;  aux=sqrt(sum(u_pie_izq.*u_pie_izq,2)); u_pie_izq=u_pie_izq./[aux,aux,aux]; 
w_pie_izq=cross((p8-p10),(p9-p10));  aux=sqrt(sum(w_pie_izq.*w_pie_izq,2)); w_pie_izq=w_pie_izq./[aux,aux,aux];
v_pie_izq=cross(w_pie_izq,u_pie_izq); 

Datos.SCL.pie_izq.u=u_pie_izq;   
Datos.SCL.pie_izq.v=v_pie_izq;   
Datos.SCL.pie_izq.w=w_pie_izq;   

end