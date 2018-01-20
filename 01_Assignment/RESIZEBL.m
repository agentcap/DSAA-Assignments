function B = RESIZEBL(A,X)
    [height,width,depth] = size(A);

    p = 0:height*X-1;
    q = 0:width*X-1;
    [P,Q] = ndgrid(p,q);

    W = 1 - (P./X - floor(P./X));
    H = 1 - (Q./X - floor(Q./X));

    x1 = 1 + floor(P./X);
    x2 = 1 + ceil(P./X);
    x2(x2 > height) = height;
    y1 = 1 + floor(Q./X);
    y2 = 1 + ceil(Q./X);
    y2(y2 > width) = width;
    
    if(depth == 3) 
        tmp = A(:,:,1);
        I11 = im2double(tmp( sub2ind([height width],x1,y1) ));
        I12 = im2double(tmp( sub2ind([height width],x2,y1) ));
        I21 = im2double(tmp( sub2ind([height width],x1,y2) ));
        I22 = im2double(tmp( sub2ind([height width],x2,y2) ));
        B(:,:,1) = (1-W).*(1-H).*I22 + (W).*(1-H).*I21 + (1-W).*(H).*I12 + (W).*(H).*I11;

        tmp = A(:,:,2);
        I11 = im2double(tmp( sub2ind([height width],x1,y1) ));
        I12 = im2double(tmp( sub2ind([height width],x2,y1) ));
        I21 = im2double(tmp( sub2ind([height width],x1,y2) ));
        I22 = im2double(tmp( sub2ind([height width],x2,y2) ));
        B(:,:,2) = (1-W).*(1-H).*I22 + (W).*(1-H).*I21 + (1-W).*(H).*I12 + (W).*(H).*I11;

        tmp = A(:,:,3);
        I11 = im2double(tmp( sub2ind([height width],x1,y1) ));
        I12 = im2double(tmp( sub2ind([height width],x2,y1) ));
        I21 = im2double(tmp( sub2ind([height width],x1,y2) ));
        I22 = im2double(tmp( sub2ind([height width],x2,y2) ));
        B(:,:,3) = (1-W).*(1-H).*I22 + (W).*(1-H).*I21 + (1-W).*(H).*I12 + (W).*(H).*I11;
    else
        tmp = A;
        I11 = im2double(tmp( sub2ind([height width],x1,y1) ));
        I12 = im2double(tmp( sub2ind([height width],x2,y1) ));
        I21 = im2double(tmp( sub2ind([height width],x1,y2) ));
        I22 = im2double(tmp( sub2ind([height width],x2,y2) ));
        B = (1-W).*(1-H).*I22 + (W).*(1-H).*I21 + (1-W).*(H).*I12 + (W).*(H).*I11;
    end 
end