function out = fft2D(im)

%% intialization
nr = size(im, 1);
nc = size(im, 2);
out(1:nr,1:nc) = 0;

%% row wise fft2D
    for i = 1:nr
        out(i,:) = fft1D(im(i,:));
    end
    out
    
%% column wise fft2D
    for i = 1:nc
        out(:,i) = fft1D(out(:,i).').';
    end
    out
end

