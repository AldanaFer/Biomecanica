function Datos = calculo_cm(Datos)

cm_cad_der = Datos.CA.cadera_d + 0.39 * (Datos.CA.rod_der-Datos.CA.cadera_d);
cm_cad_izq = Datos.CA.cadera_i + 0.39 * (Datos.CA.rod_izq-Datos.CA.cadera_i);

cm_pierna_der=Datos.CA.rod_der + 0.42 * (Datos.CA.pie_tob_der-Datos.CA.rod_der);
cm_pierna_izq=Datos.CA.rod_izq + 0.42 * (Datos.CA.pie_tob_izq-Datos.CA.rod_izq);

cm_pie_der=Datos.Pasada.Marcadores.Crudos.Valores.r_heel+0.44*(Datos.CA.pie_tob_der-Datos.Pasada.Marcadores.Crudos.Valores.r_heel);
cm_pie_izq=Datos.Pasada.Marcadores.Crudos.Valores.l_heel+0.44*(Datos.CA.pie_tob_izq-Datos.Pasada.Marcadores.Crudos.Valores.l_heel);


Datos.CM.cad_der = cm_cad_der;
Datos.CM.cad_izq = cm_cad_izq;

Datos.CM.pierna_der=cm_pierna_der;
Datos.CM.pierna_izq=cm_pierna_izq;

Datos.CM.pie_der=cm_pie_der;
Datos.CM.pie_izq=cm_pie_izq;


end