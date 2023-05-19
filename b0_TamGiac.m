function [w] = b0_TamGiac(N)
    n = 0:(N - 1);
    w = zeros(1,N);
    for i = 1:length(n)
        if (n(i) >= 0 && n(i) <= (N - 1)/2)
            w(i) = 2*n(i)/(N - 1);
        elseif (n(i) >= (N - 1)/2 && n(i) <= (N - 1))
            w(i) = 2 - 2*n(i)/(N - 1);
        else
            w(i) = 0;
        end
    end
end