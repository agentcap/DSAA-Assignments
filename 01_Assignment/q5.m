
M = [1 2 1;0 0 0;-1 -2 -1];

%% blur.jpg
figure

subplot(2,2,1);
img = imread('blur.jpg');
imshow(img);
title('blur.jpg');

subplot(2,2,2);
A = convn(img,M);
imshow(A);
title('convoluted with designed matrix');

subplot(2,2,3);
B = convn(img,M');
imshow(B);
title('convoluted with transpose of designed matrix');

subplot(2,2,4);

imshow(A + B);
title('After Adding first and second Images');

%% pepper.png;
figure

subplot(2,2,1);
img = imread('peppers.png');
imshow(img);
title('peppers.png');
subplot(2,2,2);
A = convn(img,M);
imshow(A);
title('convoluted with designed matrix');

subplot(2,2,3);
B = convn(img,M');
imshow(B);
title('convoluted with transpose of designed matrix');

subplot(2,2,4);

imshow(A + B);
title('After Adding first and second Images');

%% cameraman.tif
figure
subplot(2,2,1);
img = imread('cameraman.tif');
imshow(img);
title('cameraman.tif');
subplot(2,2,2);
A = convn(img,M);
imshow(A);
title('convoluted with designed matrix');

subplot(2,2,3);
B = convn(img,M');
imshow(B);
title('convoluted with transpose of designed matrix');

subplot(2,2,4);

imshow(A + B);
title('After Adding first and second Images');

%% blason.jpg
figure
subplot(2,2,1);
img = imread('blason.jpg');
imshow(img);
title('blason.jpg');
subplot(2,2,2);
A = convn(img,M);
imshow(A);
title('convoluted with designed matrix');

subplot(2,2,3);
B = convn(img,M');
imshow(B);
title('convoluted with transpose of designed matrix');

subplot(2,2,4);

imshow(A + B);
title('After Adding first and second Images');
