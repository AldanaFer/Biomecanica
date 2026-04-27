function  Datos=calculo_angulos_articulares(Datos)

%===========Angulos cadera derecha===============
l_cadera_derecha=cross(Datos.sis_local.pelvis.k,Datos.sis_local.muslo_der.i); 
aux=sqrt(sum(l_cadera_derecha.*l_cadera_derecha,2)); 
l_cadera_derecha=l_cadera_derecha./[aux,aux,aux];

alpha_cad_der=asind(dot(l_cadera_derecha,Datos.sis_local.pelvis.i,2)); 
beta_cad_der=asind(dot(Datos.sis_local.pelvis.k,Datos.sis_local.muslo_der.i,2));
gama_cad_der=-asind(dot(l_cadera_derecha,Datos.sis_local.muslo_der.k,2)); 

Datos.angulos.cad_der.alpha=alpha_cad_der;
Datos.angulos.cad_der.beta=beta_cad_der;
Datos.angulos.cad_der.gama=gama_cad_der; 

%===========Angulos cadera izquierda===============
l_cadera_izq=cross(Datos.sis_local.pelvis.k,Datos.sis_local.muslo_izq.i); 
aux=sqrt(sum(l_cadera_izq.*l_cadera_izq,2)); 
l_cadera_izq=l_cadera_izq./[aux,aux,aux];

alpha_cad_izq=asind(dot(l_cadera_izq,Datos.sis_local.pelvis.i,2)); 
beta_cad_izq=-asind(dot(Datos.sis_local.pelvis.k,Datos.sis_local.muslo_izq.i,2));
gama_cad_izq=asind(dot(l_cadera_izq,Datos.sis_local.muslo_izq.k,2)); 

Datos.angulos.cad_izq.alpha=alpha_cad_izq;
Datos.angulos.cad_izq.beta=beta_cad_izq;
Datos.angulos.cad_izq.gama=gama_cad_izq; 

%===========Angulos Rodilla Derecha ===============

l_rod_der=cross(Datos.sis_local.muslo_der.k,Datos.sis_local.pierna_der.i); 
aux=sqrt(sum(l_rod_der.*l_rod_der,2)); 
l_rod_der=l_rod_der./[aux,aux,aux];

alpha_rod_der=-asind(dot(l_rod_der,Datos.sis_local.muslo_der.i,2)); %Corte sagital muslo
beta_rod_der=asind(dot(Datos.sis_local.muslo_der.k,Datos.sis_local.pierna_der.i,2)); %plano perpendicular a l_rod_der 
gama_rod_der=-asind(dot(l_rod_der,Datos.sis_local.pierna_der.k,2)); %plano perpendiclar i pierna derecha

Datos.angulos.rod_der.alpha=alpha_rod_der;
Datos.angulos.rod_der.beta=beta_rod_der;
Datos.angulos.rod_der.gama=gama_rod_der; 

%===========Angulos Rodilla Izquierda ===============

l_rod_izq=cross(Datos.sis_local.muslo_izq.k,Datos.sis_local.pierna_izq.i); 
aux=sqrt(sum(l_rod_izq.*l_rod_izq,2)); 
l_rod_izq=l_rod_izq./[aux,aux,aux];

alpha_rod_izq=-asind(dot(l_rod_izq,Datos.sis_local.muslo_izq.i,2)); %Corte sagital muslo
beta_rod_izq=-asind(dot(Datos.sis_local.muslo_izq.k,Datos.sis_local.pierna_izq.i,2)); %plano perpendicular a l_rod_der 
gama_rod_izq=asind(dot(l_rod_izq,Datos.sis_local.pierna_izq.k,2)); %plano perpendiclar i pierna derecha

Datos.angulos.rod_izq.alpha=alpha_rod_izq;
Datos.angulos.rod_izq.beta=beta_rod_izq;
Datos.angulos.rod_izq.gama=gama_rod_izq; 


%===========Angulos Tobillo Derecho ===============

l_tob_der=cross(Datos.sis_local.pierna_der.k,Datos.sis_local.pie_der.i); 
aux=sqrt(sum(l_tob_der.*l_tob_der,2)); 
l_tob_der=l_tob_der./[aux,aux,aux];

alpha_tob_der = -asind(dot(l_tob_der,Datos.sis_local.pierna_der.j,2)); 
beta_tob_der = asind(dot(Datos.sis_local.pierna_der.k,Datos.sis_local.pie_der.i,2)); 
gama_tob_der = asind(dot(l_tob_der,Datos.sis_local.pie_der.k,2));

Datos.angulos.tob_der.alpha=alpha_tob_der;
Datos.angulos.tob_der.beta=beta_tob_der;
Datos.angulos.tob_der.gama=gama_tob_der; 

%===========Angulos Tobillo Izquierdo ===============

l_tob_izq=cross(Datos.sis_local.pierna_izq.k,Datos.sis_local.pie_izq.i); 
aux=sqrt(sum(l_tob_izq.*l_tob_izq,2)); 
l_tob_izq=l_tob_izq./[aux,aux,aux];

alpha_tob_izq = - asind(dot(l_tob_izq,Datos.sis_local.pierna_izq.j,2));
beta_tob_izq = - asind(dot(Datos.sis_local.pierna_izq.k,Datos.sis_local.pie_izq.i,2));
gama_tob_izq = - asind(dot(l_tob_izq,Datos.sis_local.pie_izq.k,2)); 

Datos.angulos.tob_izq.alpha=alpha_tob_izq;
Datos.angulos.tob_izq.beta=beta_tob_izq;
Datos.angulos.tob_izq.gama=gama_tob_izq; 


end