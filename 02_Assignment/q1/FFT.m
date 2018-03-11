function B = FFT(A)
    n = size(A,2);
    A = double(A);
    
    % Base Case
    if( n == 1)
        B = A;
        
    % Check whether lenght is even or not
    elseif(mod(n,2) == 1)
            B = A;
            
    else        
        k0 = [0:n/2-1];
        
        Q = exp((-2*pi*1i*k0)/n);
        Q = [Q,-Q];
        Q = repmat(Q,size(A,1),1);

        f0 = FFT( A(:,1:2:n) );
        f1 = FFT( A(:,2:2:n) );
        f0 = [f0,f0];
        f1 = [f1,f1];
        
        B = f0 + Q .* f1;        
    end
end