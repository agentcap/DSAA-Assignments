function B = FFT2D(A)

    [rows, cols, depth] = size(A);
    
    B = twofft(A);
    B = twofft(B.').';
end