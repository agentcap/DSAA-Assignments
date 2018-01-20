inp = [12 20 3 10 22 19 23 16 0 21 23 16 18];
out = [75 52 33 97 251 211 63 65];

len = size(inp,2) - size(out,2) + 1;

A = repmat(1:len,len,1);
A = A + ndgrid(0:len-1,0:len-1);
A = inp(A);

B = out(1:len)';

X = round(inv(A) * B);

X = X(len:-1:1)'
