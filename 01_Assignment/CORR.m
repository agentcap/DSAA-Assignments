function B = CORR(F,I)
    %% Initializing
    [fHeight,fWidth] = size(F);
    [iHeight,iWidth] = size(I);
    F = double(F);
    B = double(zeros(size(I,1)+fHeight-1,size(I,2)+fWidth-1));
    
    %% Padding
    pad = zeros(iHeight + 2 * fHeight - 2, iWidth + 2 * fHeight - 2);
    pad(fHeight : fHeight - 1 + iHeight, fWidth : fWidth-1 + iWidth) = I;
    
    %% Normalised corelation
    for i = 1:size(pad,1)-fHeight+1
       for j =  1:size(pad,2)-fWidth+1
           temp1 = pad(i:i+fHeight-1,j:j+fWidth-1);
           temp2 = F;
           B(i,j) = sum(sum(pad(i:i+fHeight-1,j:j+fWidth-1) .* F));
           temp1 = temp1 .* temp1;
           temp2 = temp2 .* temp2;
           sqr = sqrt(sum(sum(temp1))*sum(sum(temp2)));
           B(i,j) = B(i,j)./ sqr;
    end
end