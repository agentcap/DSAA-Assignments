inp = audioread('message1.wav')';

n = size(inp,2);

inp_fft = fft(inp);
pause on;

p = perms(1:4);
for i = 1:size(p,1)
    a = p(i,1);
    b = p(i,2);
    c = p(i,3);
    d = p(i,4);
    idx = [uint64((a-1)*n/4)+1:uint64(a*n/4) , uint64((b-1)*n/4)+1:uint64(b*n/4) ,uint64((c-1)*n/4)+1:c*n/4,uint64((d-1)*n/4)+1:d*n/4];
    temp_fft = inp_fft(idx);

    temp = ifft(temp_fft).';

    pause(3.0);
    sound(abs(temp),32000)
end
