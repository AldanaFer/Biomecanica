%Determinamos los centro articulares 
function Datos = centro_articular(Datos)

%val = Datos.Pasada.Marcadores.filtrados;
val = Datos.Pasada.Marcadores.Crudos.Valores;

marcadores = { ...
    'r_met', 'r_heel', 'r_mall', 'r_bar_2', 'r_knee_1', 'r_bar_1', 'r_asis', ...
    'l_met', 'l_heel', 'l_mall', 'l_bar_2', 'l_knee_1', 'l_bar_1', 'l_asis', ...
    'sacrum'};

for k = 1:length(marcadores)
    eval(sprintf('p%d = val.(marcadores{k});', k));
end

%==================PELVIS===================
%       metodo del libro
a2=Datos.antropometria.LONGITUD_ASIS.Valor/100;
c_a_cad_der=p15+0.598*a2*Datos.SCL.pelvis.u-0.344*a2*Datos.SCL.pelvis.v-0.29*a2*Datos.SCL.pelvis.w;
c_a_cad_izq=p15+0.598*a2*Datos.SCL.pelvis.u+0.344*a2*Datos.SCL.pelvis.v-0.29*a2*Datos.SCL.pelvis.w;

Datos.CA.cadera_d=c_a_cad_der;
Datos.CA.cadera_i=c_a_cad_izq;

%metodo de davis

% === PASO TODO A METROS ===
l_asis = val.l_asis ;
r_asis = val.r_asis ;
sacrum = val.sacrum ;

Beta2 = l_asis - r_asis; %Vector de ASIS derecho a Izquierdo

%epy=aVersor(Beta2);%divido por norma para convertir el vector a versor
epy=Beta2;
aux=sqrt(sum(epy.*epy,2));
disp('norma epy')
disp(min(aux))
epy=epy./[aux,aux,aux];

PmedioAsis = (l_asis + r_asis).*0.5;

Beta1 = PmedioAsis - sacrum; %Vector de ASIS derecho a Izquierdo

aux=dot(Beta1,epy,2);
aux1= (epy(:,1)).*(aux);
aux2= (epy(:,2)).*(aux);
aux3= (epy(:,3)).*(aux);
aux= [aux1 aux2 aux3];

Beta3= Beta1 - aux;

%epx=aVersor(Beta3);%divido por norma para convertir el vector a versor
epx=Beta3;
aux=sqrt(sum(epx.*epx,2));
disp('norma epx')
disp(min(aux))
epx=epx./[aux,aux,aux];

epz=cross(epx,epy);%versor 2×3-->1  ;-)
%epz=aVersor(epz);%divido por norma para convertir el vector a versor
aux=sqrt(sum(epz.*epz,2));
disp('norma epz')
disp(min(aux))
epz=epz./[aux,aux,aux];

TitaDavis=28.4*pi/180;
BetaDavis=18*pi/180;

% === ANTROPOMETRIA EN METROS ===
LONGITUD_ASIS = Datos.antropometria.LONGITUD_ASIS.Valor(1,1) / 100;
LONGITUD_PIERNA_D = Datos.antropometria.LONGITUD_PIERNA_DERECHA.Valor(1,1) / 100;
LONGITUD_PIERNA_I = Datos.antropometria.LONGITUD_PIERNA_IZQUIERDA.Valor(1,1) / 100;
PROFUNDIDAD_PELVIS = Datos.antropometria.PROFUNDIDAD_PELVIS.Valor(1,1) / 100;

C=0.115*(LONGITUD_PIERNA_D+LONGITUD_PIERNA_I)*0.5-0.0153;

XH = (-PROFUNDIDAD_PELVIS)*cos(BetaDavis)+C*cos(TitaDavis)*sin(BetaDavis);
YH = C*sin(TitaDavis)-LONGITUD_ASIS/2;
ZH = (-PROFUNDIDAD_PELVIS)*sin(BetaDavis)-C*cos(TitaDavis)*cos(BetaDavis);

disp(size(epx))
disp(size(XH))
disp(size(YH))
disp(size(ZH))

Datos.CA.davis_cadera_d = PmedioAsis + epx.*XH + epy.*YH + epz.*ZH;
Datos.CA.davis_cadera_i = PmedioAsis + epx.*XH - epy.*YH + epz.*ZH;

%==================Rodilla derecha===================

a11=Datos.antropometria.DIAMETRO_RODILLA_DERECHA.Valor/100;
rod_der = p5+0.5*Datos.SCL.pierna_der.w*a11;
Datos.CA.rod_der=rod_der;

%==================Rodilla izquierda===================

a12=Datos.antropometria.DIAMETRO_RODILLA_IZQUIERDA.Valor/100;
rod_izq = p12-0.5*Datos.SCL.pierna_izq.w*a12;
Datos.CA.rod_izq=rod_izq;

%==================Pie derecho===================

a13=Datos.antropometria.LONGITUD_PIE_DERECHO.Valor/100;
a15=Datos.antropometria.ALTURA_MALEOLOS_DERECHO.Valor/100;
a17=Datos.antropometria.ANCHO_MALEOLOS_DERECHO.Valor/100;
a19=Datos.antropometria.ANCHO_PIE_DERECHO.Valor/100;

pie_tobillo_der = p3 + 0.016*a13*Datos.SCL.pie_der.u + 0.392*a15*Datos.SCL.pie_der.v + 0.478*a17*Datos.SCL.pie_der.w;
pie_punta_der = p3 + 0.742*a13*Datos.SCL.pie_der.u + 1.074*a15*Datos.SCL.pie_der.v - 0.187*a19*Datos.SCL.pie_der.w;

Datos.CA.pie_tob_der=pie_tobillo_der;
Datos.CA.pie_punta_der=pie_punta_der;


%==================Pie izqueirdo===================

a14=Datos.antropometria.LONGITUD_PIE_IZQUIERDO.Valor/100;
a16=Datos.antropometria.ALTURA_MALEOLOS_IZQUIERDO.Valor/100;
a18=Datos.antropometria.ANCHO_MALEOLOS_IZQUIERDO.Valor/100;
a20=Datos.antropometria.ANCHO_PIE_IZQUIERDO.Valor/100;

pie_tobillo_izq = p10 + 0.016*a14*Datos.SCL.pie_izq.u + 0.392*a16*Datos.SCL.pie_izq.v - 0.478*a18*Datos.SCL.pie_izq.w;
pie_punta_izq = p10 + 0.742*a14 * Datos.SCL.pie_izq.u + 1.074*a16*Datos.SCL.pie_izq.v + 0.187*a20*Datos.SCL.pie_izq.w;

Datos.CA.pie_tob_izq=pie_tobillo_izq;
Datos.CA.pie_punta_izq=pie_punta_izq;


end