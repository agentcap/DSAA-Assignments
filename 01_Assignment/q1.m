%A = imread('cameraman.tif');
%A = imread('blur.jpg');
A = imread('123.jpg');
B = RESIZEN(A,2);
C = RESIZEBL(A,2);
sz = size(B);

figure

subplot(2,2,1);
imshow(A);
title('Coloured');
axis([0,sz(2),0,sz(1)]);
axis on;

subplot(2,2,3);
imshow(B);
title('Nearest Neighbour 2X');
axis([0,sz(2),0,sz(1)]);
axis on;

subplot(2,2,4);
imshow(B);
title('Bilinear Interpolation 2X');
axis([0,sz(2),0,sz(1)]);
axis on;
