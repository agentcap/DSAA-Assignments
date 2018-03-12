%%% Play original and filterd sound and prints the two frequecies the q2.mat is composed of.
inp = load('q2.mat');
pause on;
x = inp.X';
fs = inp.Fs;
n = size(x,2);

sound(x,fs);
f = fft(x);

[val,idx] = sort(abs(f));
idx = idx(n:-1:1);
%% Find frequency
norm = n/fs;
if idx(1) <= 1 + n/2
    round(idx(1)./norm)
end
if idx(2) <= 1 + n/2
    round(idx(2)./norm)
end
if idx(3) <= 1 + n/2
    round(idx(3)./norm)
end
if idx(4) <= 1 + n/2
    round(idx(4)./norm)
end

%% Cleaning the noise

clean_f = zeros(1,n);

clean_f(idx(1)) = f(idx(1));
clean_f(idx(2)) = f(idx(2));
clean_f(idx(3)) = f(idx(3));
clean_f(idx(4)) = f(idx(4));

clean_f = ifft(clean_f);
pause(5.0);
sound(clean_f,fs);
