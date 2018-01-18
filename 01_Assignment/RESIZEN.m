function B = RESIZEN(A,X)
    [height,width,~] = size(A);
    xCord = ([ones(1,X),round((X+1:height*X)/X)]);
    yCord = ([ones(1,X),round((X+1:width*X)/X)]);
    B = A(xCord,yCord,:);
end