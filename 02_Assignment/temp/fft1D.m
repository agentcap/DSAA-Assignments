function [out] = fft1D(inp)
    inp = double(inp);
    if size(inp, 2) == 1
        out = inp;
    else
        out = inp;
        f1  = fft1D(inp(1:2:end));
        f2  = fft1D(inp(2:2:end));
        n   = size(inp, 2);
        n   = n/2;
        q   = exp((-1i*pi/n).*(0:n-1));
        out(1:n) = (f1 + q.*f2);
        out(n+1:2*n) = (f1 - q.*f2);
    end 
end