function B = FFT2D(A)

    [rows, cols, depth] = size(A);
    
    B = FFT(A);
    B = FFT(B.').';
end