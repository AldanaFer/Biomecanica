% function grafica_euler(Datos)
% 
% campos = fieldnames(Datos.euler);
% 
% for c = 1:length(campos)
%     
%     nombre = campos{c};
%     
%     alpha_100 = InterpolaA100Muestras(Datos.euler.(nombre).alpha);
%     beta_100  = InterpolaA100Muestras(Datos.euler.(nombre).beta);
%     gamma_100 = InterpolaA100Muestras(Datos.euler.(nombre).gamma);
%     
%     figure; hold on; grid on;
%     title(['Angulos de Euler - ' nombre]);
%     xlabel('% Ciclo');
%     ylabel('Angulo (grados)');
%     
%     plot(1:100, alpha_100, 'b', 'LineWidth', 1.5);
%     plot(1:100, beta_100,  'r', 'LineWidth', 1.5);
%     plot(1:100, gamma_100, 'k', 'LineWidth', 1.5);
%     
%     legend('alpha','beta','gamma');
%     xlim([1 100]);
% end
% 
% end

function grafica_euler(Datos)

campos = fieldnames(Datos.euler);

carpeta = fullfile('..','..','Figuras','Angulos Euler');

if ~exist(carpeta,'dir')
    mkdir(carpeta)
end

for c = 1:length(campos)
    
    nombre = campos{c};
    
    alpha_100 = InterpolaA100Muestras(Datos.euler.(nombre).alpha);
    beta_100  = InterpolaA100Muestras(Datos.euler.(nombre).beta);
    gamma_100 = InterpolaA100Muestras(Datos.euler.(nombre).gamma);
    
    figure; hold on; grid on;
    title(['Angulos de Euler - ' nombre]);
    xlabel('% Ciclo');
    ylabel('Angulo (grados)');
    
    plot(1:100, alpha_100, 'b', 'LineWidth', 1.5);
    plot(1:100, beta_100,  'r', 'LineWidth', 1.5);
    plot(1:100, gamma_100, 'k', 'LineWidth', 1.5);
    
    legend('alpha','beta','gamma');
    xlim([1 100]);
    
    saveas(gcf, fullfile(carpeta, ['Euler_' nombre '.png']))
    
end

end