function sgram = SPECT(inp, wnd_size, stride, Fs)
    %% Finding the spectogram
    
    len = size(inp,1);
    
    rows = wnd_size;
    cols = floor(len/(wnd_size - stride));
    
    filter = gausswin(wnd_size);
    filter = repmat(filter,1,cols);
    
    start_idx = 1:wnd_size-stride:len;
    start_idx = start_idx(1:cols);
    start_idx = repmat(start_idx,rows,1);
    
    start_idx = start_idx + ndgrid(0:rows-1,1:cols);
    
    f = inp(start_idx);
    
    sgram = abs(fft(f.* filter));
    
    %% Comparing the outputs with inbuit function
    time_axis = 0:(wnd_size-stride)*(1/Fs):(len-(wnd_size-stride))*(1/Fs);
    freq_axis = 0:Fs/rows:(Fs/2)-Fs/rows;
    
    figure;
    subplot(1,2,1);
    surf(time_axis,freq_axis,20*log10(abs(sgram(1:rows/2,:))),'EdgeColor','none')
    axis xy; axis tight;
    view(0,90);
    title('Our Function');
    
    subplot(1,2,2);
    spectrogram(inp, wnd_size, stride, 200, Fs,'yaxis')
    title('In built');
end    