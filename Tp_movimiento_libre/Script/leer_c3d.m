function [marcadores,informacionCine,fileName] = leer_c3d(fileName)

% Carpeta donde estan los archivos .c3d
filePath = fullfile('..');

% Si no se pasa nombre, abre ventana
if nargin == 0
    [fileName, filePath] = uigetfile('*.c3d');
end

% Leer archivo
[h,~,~] = btkReadAcquisition(fullfile(filePath,fileName));

% Unidades de marcadores en metros
btkSetPointsUnit(h, 'marker', 'm');

% Obtener marcadores
[premarcadores, informacionCine] = btkGetMarkers(h);

marcadores.Valores = premarcadores;
marcadores.Unidades = informacionCine.units.ALLMARKERS;
marcadores.Frecuencia = informacionCine.frequency;

end