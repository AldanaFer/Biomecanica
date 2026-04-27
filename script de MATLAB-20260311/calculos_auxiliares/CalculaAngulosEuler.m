function Datos = CalculaAngulosEuler(Datos)
campos = fieldnames(Datos.sis_local);

I = [1 0 0];
K = [0 0 1];

for c = 1:length(campos)

    nombre = campos{c};

    i_seg = Datos.sis_local.(nombre).i;
    j_seg = Datos.sis_local.(nombre).j;
    k_seg = Datos.sis_local.(nombre).k;

    N = size(i_seg,1);

    alpha = zeros(N,1);
    beta  = zeros(N,1);
    gamma = zeros(N,1);

    for m = 1:N

        i = i_seg(m,:);
        j = j_seg(m,:);
        k = k_seg(m,:);

        %============== Linea de nodos ==============
        LN = cross(K,k);
        LN = LN / norm(LN);

        %================ Alpha =====================
        alpha(m) = asind(dot(cross(I,LN),K,2));

        %================ Beta ======================
        beta(m) = asind(dot(cross(K,k),LN,2));

        %================ Gamma =====================
        gamma(m) = -(dot(j,LN,2) / abs(dot(j,LN,2))) * acosd(dot(i,LN,2));

    end

    Datos.euler.(nombre).alpha = alpha;
    Datos.euler.(nombre).beta  = beta;
    Datos.euler.(nombre).gamma = gamma;

end

end