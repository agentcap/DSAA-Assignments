function B = CONVONE(F,I)
    %% Padding 
    I = [zeros(1,size(F,1)-1),I',zeros(1,size(F,1)-1)];
    
    len = size(I,2);
    A = repmat(1:size(F,1),len+1-size(F,1),1);
    A = A + ndgrid(0:len-size(F,1),0:size(F,1)-1)
    A = I(A);
    B = (A * F(size(F,1):-1:1));
end