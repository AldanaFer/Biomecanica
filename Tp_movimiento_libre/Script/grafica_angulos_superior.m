function grafica_angulos_superior(Datos)

registros = fieldnames(Datos);

articulaciones = {'hombro','codo','muneca'};
componentes = {'alpha','beta','gamma'};

titulos_filas = {'Angulo de Hombro','Angulo de Codo','Angulo de Muneca'};
titulos_columnas = {'Alpha','Beta','Gamma'};

x = 1:100;

figure;

for a = 1:length(articulaciones)

    art = articulaciones{a};

    for c = 1:length(componentes)

        comp = componentes{c};

        datos_der = [];
        datos_izq = [];

        for r = 1:length(registros)

            nombre_registro = registros{r};
            gestos = fieldnames(Datos.(nombre_registro).gestos);

            for g = 1:length(gestos)

                nombre_gesto = gestos{g};

                ang_der = Datos.(nombre_registro).gestos.(nombre_gesto).angulos.([art '_der']).(comp);
                ang_izq = Datos.(nombre_registro).gestos.(nombre_gesto).angulos.([art '_izq']).(comp);

                ang_der_100 = InterpolaA100Muestras(ang_der);
                ang_izq_100 = InterpolaA100Muestras(ang_izq);

                ang_der_100 = reshape(ang_der_100,1,[]);
                ang_izq_100 = reshape(ang_izq_100,1,[]);

                datos_der = [datos_der; ang_der_100];
                datos_izq = [datos_izq; ang_izq_100];

            end
        end

        prom_der = mean(datos_der,1);
        desv_der = std(datos_der,0,1);

        prom_izq = mean(datos_izq,1);
        desv_izq = std(datos_izq,0,1);

        subplot(3,3,(a-1)*3+c);
        hold on; grid on;

        title([titulos_filas{a} ' - ' titulos_columnas{c}]);

        plot(x,prom_der,'r','LineWidth',1.5);
        plot(x,prom_der + desv_der,'r--','LineWidth',1);
        plot(x,prom_der - desv_der,'r--','LineWidth',1);

        plot(x,prom_izq,'g','LineWidth',1.5);
        plot(x,prom_izq + desv_izq,'g--','LineWidth',1);
        plot(x,prom_izq - desv_izq,'g--','LineWidth',1);

        xlabel('% Gesto');
        ylabel('Angulo [°]');
        xlim([1 100]);

        if a == 1 && c == 1
            legend('Der prom','Der + desv','Der - desv', ...
                   'Izq prom','Izq + desv','Izq - desv', ...
                   'Location','bestoutside');
        end

    end
end

end