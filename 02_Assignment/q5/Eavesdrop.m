function [number] = Eavesdrop(file_name)
    inp = audioread(file_name);
    info = audioinfo(file_name);
    no_digits = info.Duration;

    wnd = size(inp,1)/no_digits;
    
    tone = zeros(10, wnd);

    % Reading dial tones
    tone(1,:) = fft(audioread('1.ogg'));
    tone(2,:) = fft(audioread('2.ogg'));
    tone(3,:) = fft(audioread('3.ogg'));
    tone(4,:) = fft(audioread('4.ogg'));
    tone(5,:) = fft(audioread('5.ogg'));
    tone(6,:) = fft(audioread('6.ogg'));
    tone(7,:) = fft(audioread('7.ogg'));
    tone(8,:) = fft(audioread('8.ogg'));
    tone(9,:) = fft(audioread('9.ogg'));
    tone(10,:) = fft(audioread('0.ogg'));
    
    number = uint64(0);
    for idx = 0:no_digits-1
       wnd_data = inp( idx*wnd+1 : (idx+1)*wnd );
       
       maxi = -1;
       digit = -1;
       for no = 1:10
           value = dot(fft(wnd_data) , tone(no,:));
            if value > maxi
                maxi = value;
                digit = mod(no,10);
            end
        end
       number = number*10 + digit;
    end
end