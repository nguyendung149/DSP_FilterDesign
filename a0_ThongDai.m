function [hn_LT] = a0_ThongDai(omega_cL, omega_cH, N)
    n = -(N - 1)/2 : (N - 1)/2;
    hn_LT = zeros(1,length(n));
    for i = 1:length(n)
        if n(i)== 0
            hn_LT(i) = (omega_cH - omega_cL)/pi;
        else
            hn_LT(i) = sin(omega_cH*n(i))/(pi*n(i)) - sin(omega_cL*n(i))/(pi*n(i));
        end
    end
end
