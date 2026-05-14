function AMostrar = InterpolaA100Muestras(AMostrar)

AMostrar = AMostrar(:);

Tiempo = 1:length(AMostrar);

Porcentaje = linspace(1,length(AMostrar),100);

AMostrar = interp1(Tiempo,AMostrar,Porcentaje,'spline');

end