img = imread('cameraman.tif');
M = [-1 -2 -1; 0 0 0; 1 2 1];

A = conv2(double(M),double(img));
B = conv2(double(M'),double(img));

figure

subplot(1,2,1);
imshow(A);

subplot(1,2,2);
imshow(B);