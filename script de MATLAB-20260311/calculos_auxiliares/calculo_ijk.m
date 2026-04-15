function Datos = calculo_ijk(Datos)
%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;

marcadores = { ...
    'r_met', 'r_heel', 'r_mall', 'r_bar_2', 'r_knee_1', 'r_bar_1', 'r_asis', ...
    'l_met', 'l_heel', 'l_mall', 'l_bar_2', 'l_knee_1', 'l_bar_1', 'l_asis', ...
    'sacrum'};

for k = 1:length(marcadores)
    eval(sprintf('p%d = val.(marcadores{k});', k));
end

%================PELVIS================
pelvis_i=Datos.SCL.pelvis.w;
pelvis_j=Datos.SCL.pelvis.u;
pelvis_k=Datos.SCL.pelvis.v;

Datos.sis_local.pelvis.i=pelvis_i;
Datos.sis_local.pelvis.j=pelvis_j;
Datos.sis_local.pelvis.k=pelvis_k;

%================MUSLO DERECHO LIBRO================

muslo_der_i=Datos.CA.cadera_d-Datos.CA.rod_der;  aux=sqrt(sum(muslo_der_i.*muslo_der_i,2)); muslo_der_i=muslo_der_i./[aux,aux,aux]; 
muslo_der_j=cross((p6-Datos.CA.cadera_d),(Datos.CA.rod_der-Datos.CA.cadera_d));  aux=sqrt(sum(muslo_der_j.*muslo_der_j,2)); muslo_der_j=muslo_der_j./[aux,aux,aux];
muslo_der_k=cross(muslo_der_i,muslo_der_j); 

Datos.sis_local.muslo_der.i=muslo_der_i;   
Datos.sis_local.muslo_der.j=muslo_der_j;   
Datos.sis_local.muslo_der.k=muslo_der_k;   

%================MUSLO DERECHO DAVIS================
muslo_der_i_davis=Datos.CA.davis_cadera_d-Datos.CA.rod_der;  aux=sqrt(sum(muslo_der_i_davis.*muslo_der_i_davis,2)); muslo_der_i_davis=muslo_der_i_davis./[aux,aux,aux]; 
muslo_der_j_davis=cross((p6-Datos.CA.davis_cadera_d),(Datos.CA.rod_der-Datos.CA.davis_cadera_d));  aux=sqrt(sum(muslo_der_j_davis.*muslo_der_j_davis,2)); muslo_der_j_davis=muslo_der_j_davis./[aux,aux,aux];
muslo_der_k_davis=cross(muslo_der_i_davis,muslo_der_j_davis); 

Datos.sis_local.muslo_der_davis.i=muslo_der_i_davis;   
Datos.sis_local.muslo_der_davis.j=muslo_der_j_davis;   
Datos.sis_local.muslo_der_davis.k=muslo_der_k_davis;

%================MUSLO IZQUIERDO LIBRO================

muslo_izq_i=Datos.CA.cadera_i - Datos.CA.rod_izq;  aux=sqrt(sum(muslo_izq_i.*muslo_izq_i,2)); muslo_izq_i=muslo_izq_i./[aux,aux,aux]; 
muslo_izq_j=cross((Datos.CA.rod_izq-Datos.CA.cadera_i),(p13-Datos.CA.cadera_i));  aux=sqrt(sum(muslo_izq_j.*muslo_izq_j,2)); muslo_izq_j=muslo_izq_j./[aux,aux,aux];
muslo_izq_k=cross(muslo_izq_i,muslo_izq_j); 

Datos.sis_local.muslo_izq.i=muslo_izq_i;   
Datos.sis_local.muslo_izq.j=muslo_izq_j;   
Datos.sis_local.muslo_izq.k=muslo_izq_k;   

%================MUSLO IZQIERDO DAVIS================
muslo_izq_i_davis=Datos.CA.davis_cadera_i-Datos.CA.rod_izq;  aux=sqrt(sum(muslo_izq_i_davis.*muslo_izq_i_davis,2)); muslo_izq_i_davis=muslo_izq_i_davis./[aux,aux,aux]; 
muslo_izq_j_davis=cross((Datos.CA.rod_izq-Datos.CA.davis_cadera_i),(p13-Datos.CA.davis_cadera_i));  aux=sqrt(sum(muslo_izq_j_davis.*muslo_izq_j_davis,2)); muslo_izq_j_davis=muslo_izq_j_davis./[aux,aux,aux];
muslo_izq_k_davis=cross(muslo_izq_i_davis,muslo_izq_j_davis); 

Datos.sis_local.muslo_izq_davis.i=muslo_izq_i_davis;   
Datos.sis_local.muslo_izq_davis.j=muslo_izq_j_davis;   
Datos.sis_local.muslo_izq_davis.k=muslo_izq_k_davis;

%================PIERNA DERECHA================

pierna_der_i=Datos.CA.rod_der-Datos.CA.pie_tob_der;  aux=sqrt(sum(pierna_der_i.*pierna_der_i,2)); pierna_der_i=pierna_der_i./[aux,aux,aux]; 
pierna_der_j=cross((p5-Datos.CA.rod_der),(Datos.CA.pie_tob_der-Datos.CA.rod_der));  aux=sqrt(sum(pierna_der_j.*pierna_der_j,2)); pierna_der_j=pierna_der_j./[aux,aux,aux];
pierna_der_k=cross(pierna_der_i,pierna_der_j); 

Datos.sis_local.pierna_der.i=pierna_der_i;   
Datos.sis_local.pierna_der.j=pierna_der_j;   
Datos.sis_local.pierna_der.k=pierna_der_k;    

%================PIERNA IZQUIERDA================

pierna_izq_i=Datos.CA.rod_izq-Datos.CA.pie_tob_izq;  aux=sqrt(sum(pierna_izq_i.*pierna_izq_i,2)); pierna_izq_i=pierna_izq_i./[aux,aux,aux]; 
pierna_izq_j=cross((Datos.CA.pie_tob_izq-Datos.CA.rod_izq),(p12-Datos.CA.rod_izq));  aux=sqrt(sum(pierna_izq_j.*pierna_izq_j,2)); pierna_izq_j=pierna_izq_j./[aux,aux,aux];
pierna_izq_k=cross(pierna_izq_i,pierna_izq_j); 

Datos.sis_local.pierna_izq.i=pierna_izq_i;   
Datos.sis_local.pierna_izq.j=pierna_izq_j;   
Datos.sis_local.pierna_izq.k=pierna_izq_k;    


%================PIE DERECHO================

pie_der_i=p2-Datos.CA.pie_punta_der;  aux=sqrt(sum(pie_der_i.*pie_der_i,2)); pie_der_i=pie_der_i./[aux,aux,aux]; 
pie_der_k=cross((Datos.CA.pie_tob_der-p2),(Datos.CA.pie_punta_der-p2));  aux=sqrt(sum(pie_der_k.*pie_der_k,2)); pie_der_k=pie_der_k./[aux,aux,aux];
pie_der_j=cross(pie_der_k,pie_der_i); 

Datos.sis_local.pie_der.i=pie_der_i;   
Datos.sis_local.pie_der.j=pie_der_j;   
Datos.sis_local.pie_der.k=pie_der_k;   

%================PIE IZQUIERDO================

pie_izq_i=p9-Datos.CA.pie_punta_izq;  aux=sqrt(sum(pie_izq_i.*pie_izq_i,2)); pie_izq_i=pie_izq_i./[aux,aux,aux]; 
pie_izq_k=cross((Datos.CA.pie_tob_izq-p9),(Datos.CA.pie_punta_izq-p9));  aux=sqrt(sum(pie_izq_k.*pie_izq_k,2)); pie_izq_k=pie_izq_k./[aux,aux,aux];
pie_izq_j=cross(pie_izq_k,pie_izq_i); 

Datos.sis_local.pie_izq.i=pie_izq_i;   
Datos.sis_local.pie_izq.j=pie_izq_j;   
Datos.sis_local.pie_izq.k=pie_izq_k;   




end