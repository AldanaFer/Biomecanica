function Datos = calculo_masa_inercia(Datos)

% peso en kg
peso = Datos.antropometria.PESO.Valor;
% altura en cm
altura = Datos.antropometria.ALTURA.Valor;

% Coeficientes: [B0 B1 B2]
coef.Pie            = [-0.829   0.0077   0.0073];
coef.Pierna         = [-1.592   0.0362   0.0121];
coef.Muslo          = [-2.649   0.1463   0.0137];

segmentos = fieldnames(coef);

for i = 1:length(segmentos)
    seg = segmentos{i};
    
    B0 = coef.(seg)(1);
    B1 = coef.(seg)(2);
    B2 = coef.(seg)(3);
    
    Datos.masas_segmentos.(seg) = B0 + B1*peso + B2*altura;
end
coefIxx.Pie    = [ 15.48   0.144   0.088];
coefIxx.Pierna = [-70.5    1.134   0.3];
coefIxx.Muslo  = [-13.5   11.3    -2.28];

coefIyy.Pie    = [-100    0.480   0.626];
coefIyy.Pierna = [-1105   4.59    6.63];
coefIyy.Muslo  = [-3557  31.7    18.61];

coefIzz.Pie    = [-97.09   0.414   0.614];
coefIzz.Pierna = [-1152    4.594   6.815];
coefIzz.Muslo  = [-3690   32.02   19.24];

for i = 1:length(segmentos)

    seg = segmentos{i};

    Ixx = coefIxx.(seg)(1) + peso*coefIxx.(seg)(2) + altura*coefIxx.(seg)(3);
    Iyy = coefIyy.(seg)(1) + peso*coefIyy.(seg)(2) + altura*coefIyy.(seg)(3);
    Izz = coefIzz.(seg)(1) + peso*coefIzz.(seg)(2) + altura*coefIzz.(seg)(3);

    % Paso de kg*cm^2 a kg*m^2
    Ixx = Ixx/(100^2);
    Iyy = Iyy/(100^2);
    Izz = Izz/(100^2);

    Datos.inercia_segmentos.(seg).Ixx = Ixx;
    Datos.inercia_segmentos.(seg).Iyy = Iyy;
    Datos.inercia_segmentos.(seg).Izz = Izz;

    Datos.inercia_segmentos.(seg).matriz = [Ixx  0    0;
                                             0   Iyy   0;
                                             0    0   Izz];
end

end