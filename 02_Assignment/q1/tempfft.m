function B = FFT(A)

    n = size(A,2);
    if( n == 1)
        B = A;
    else
        even    = A(1:2:n);
        odd     = A(2:2:n);
        
        f0 = FFT(even);
        f1 = FFT(odd);

        k0 = [0:n/2-1];
        Q = exp((-2*pi*1i*k0)/n);
        
        Q = [Q,-Q];
        f0 = [f0,f0];
        f1 = [f1,f1];
        
        B = f0 + Q .* f1;        
    end
end