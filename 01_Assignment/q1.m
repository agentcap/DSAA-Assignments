%A = imread('cameraman.tif');
A = imread('blur.jpg');
B = RESIZEBL(A,2);
sz = size(B);

figure

subplot(1,2,1);
imshow(A);
title('BEFORE RESIZING');
axis([0,sz(2),0,sz(1)]);
axis on;

subplot(122);
imshow(B);
title('AFTER RESIZING to 2X');
axis([0,sz(2),0,sz(1)]);
axis on;
