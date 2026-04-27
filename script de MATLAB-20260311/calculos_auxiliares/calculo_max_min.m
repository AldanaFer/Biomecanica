function Datos = calculo_max_min(Datos)

articulaciones = fieldnames(Datos.angulos);

for i = 1:length(articulaciones)
    
    art = articulaciones{i};
    nombres_ang = fieldnames(Datos.angulos.(art));
    
    for j = 1:length(nombres_ang)
        
        ang = nombres_ang{j};
        vec = Datos.angulos.(art).(ang);
        
        idx_max = find(islocalmax(vec,'MinProminence',2));
        idx_min = find(islocalmin(vec,'MinProminence',2));
        
        val_max = vec(idx_max);
        val_min = vec(idx_min);
        
        Datos.max_min_angulo.(art).(ang).max = val_max;
        Datos.max_min_angulo.(art).(ang).idx_max = idx_max;
        
        Datos.max_min_angulo.(art).(ang).min = val_min;
        Datos.max_min_angulo.(art).(ang).idx_min = idx_min;
        
        if ~isempty(val_max) && ~isempty(val_min)
            Datos.max_min_angulo.(art).(ang).ROM = max(val_max) - min(val_min);
        else
            Datos.max_min_angulo.(art).(ang).ROM = [];
        end
        
    end
end

end
