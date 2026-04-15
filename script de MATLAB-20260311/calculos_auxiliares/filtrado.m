function  Datos=filtrado(Datos,fm,frec_corte,Orden,PrimerFrame,UltimoFrame)

fe=fm/2;
wn=frec_corte/fe;
[B,A]=butter(Orden,wn);
Marcadores=fieldnames(Datos.Pasada.Marcadores.Crudos.Valores);
NumMarcadores=length(Marcadores);

for NumMar=1:NumMarcadores
    Mar=char(Marcadores{NumMar});
    Cord=Datos.Pasada.Marcadores.Crudos.Valores.(sprintf('%s',Mar));
    Datos.Pasada.Marcadores.filtrados.(sprintf('%s',Mar))=Cord;
    for i=1:3
        Cord=Datos.Pasada.Marcadores.Crudos.Valores.(sprintf('%s',Mar))(PrimerFrame:UltimoFrame,i);
        Cord = filtfilt(B,A,Cord);
        Datos.Pasada.Marcadores.filtrados.(sprintf('%s',Mar))(PrimerFrame:UltimoFrame,i)=Cord;
    end;











end