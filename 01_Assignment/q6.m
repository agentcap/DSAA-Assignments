face  = rgb2gray(imread('F1.jpg'));
faces = rgb2gray(imread('Faces.jpg'));

cor = CORR(face,faces);

[x,y] = find(cor==max(cor(:)));

[h,w] = size(face);

x = x - h + 1; 
y = y - w + 1;

figure
hAx = axes;
imshow(faces,'Parent',hAx);
imrect(hAx,[y,x,w,h]);