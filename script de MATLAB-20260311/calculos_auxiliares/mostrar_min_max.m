function mostrar_min_max(Datos)

fila = 1;
tabla = {};

articulaciones = fieldnames(Datos.max_min_angulo);

for i = 1:length(articulaciones)
    art = articulaciones{i};
    angulos = fieldnames(Datos.max_min_angulo.(art));
    
    for j = 1:length(angulos)
        ang = angulos{j};
        d = Datos.max_min_angulo.(art).(ang);
        
        tabla{fila,1} = art;
        tabla{fila,2} = ang;
        tabla{fila,3} = d.min;
        tabla{fila,4} = d.max;
        tabla{fila,5} = d.ROM;
        fila = fila + 1;
    end
end

T = cell2table(tabla,...
    'VariableNames',{'Articulacion','Angulo','Min','Max','ROM'});
disp(T)
end