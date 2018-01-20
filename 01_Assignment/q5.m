%% Designed Matrix

M = [1 2 1;0 0 0;-1 -2 -1];

%% blur.jpg
figure
subplot(2,2,1);
im = imread('blur.jpg');
imshow(im);
title('blur.jpg');
subplot(2,2,2);
out1 = convn(im,M);
imshow(out1);
title('convoluted with the designed matrix');
subplot(2,2,3);
out2 = convn(im,M');
imshow(out2);
title('convoluted with the transpose of designed matrix');
subplot(2,2,4);
imshow(out1 + out2);
title('Image obtained by adding first and second image matrices');

%% pepper.png;
figure
subplot(2,2,1);
im = imread('peppers.png');
imshow(im);
title('peppers.png');
subplot(2,2,2);
out1 = convn(im,M);
imshow(out1);
title('convoluted with the designed matrix');
subplot(2,2,3);
out2 = convn(im,M');
imshow(out2);
title('convoluted with the transpose of designed matrix');
subplot(2,2,4);
imshow(out1 + out2);
title('Image obtained by adding first and second image matrices');

%% blason.jpg
figure
subplot(2,2,1);
im = imread('blason.jpg');
imshow(im);
title('blason.jpg');
subplot(2,2,2);
out1 = convn(im,M);
imshow(out1);
title('convoluted with the designed matrix');
subplot(2,2,3);
out2 = convn(im,M');
imshow(out2);
title('convoluted with the transpose of designed matrix');
subplot(2,2,4);
imshow(out1 + out2);
title('Image obtained by adding first and second image matrices');

%% cameraman.tif
figure
subplot(2,2,1);
im = imread('cameraman.tif');
imshow(im);
title('cameraman.tif');
subplot(2,2,2);
out1 = convn(im,M);
imshow(out1);
title('convoluted with the designed matrix');
subplot(2,2,3);
out2 = convn(im,M');
imshow(out2);
title('convoluted with the transpose of designed matrix');
subplot(2,2,4);
imshow(out1 + out2);
title('Image obtained by adding first and second image matrices');