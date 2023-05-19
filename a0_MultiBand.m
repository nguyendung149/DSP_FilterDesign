function [hn_LT] = a0_MultiBand(omega_c1, omega_c2, omega_c3, omega_c4, N)
    n = -(N - 1)/2 : (N - 1)/2;
    hn_LT = zeros(1,length(n));
    for i = 1:length(n)
        if n(i) == 0 
            hn_LT(i) = (omega_c4 - omega_c3 + omega_c2 - omega_c1)/pi;
        else
            hn_LT(i) = (sin(omega_c2*n(i)) + sin(omega_c4*n(i)) - sin(omega_c1*n(i)) - sin(omega_c3*n(i)))/(pi*n(i));
        end
    end
    
end