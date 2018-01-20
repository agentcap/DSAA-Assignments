%% Recording sound;
freq = 44100;
time = 3;
bits = 24;
recObj = audiorecorder(freq,bits,1);
disp('Start speaking.')
recordblocking(recObj, time);
disp('End of Recording.');
A = getaudiodata(recObj);

%% Playing the recorded sound;
sound(A,freq,bits);

%% Subsample to 24khz
X = 24000;
B = A(round(1:freq/X:freq*time));
sound(B,X,bits);

%% Subsample to 16khz
X = 16000;
B = A(round(1:freq/X:freq*time));
sound(B,X,bits);

%% Subsample to 80khz
X = 8000;
B = A(round(1:freq/X:freq*time));
sound(B,X,bits);

%% Subsample to 4khz
X = 4000;
B = A(round(1:freq/X:freq*time));
sound(B,X,bits);

%% Simulating in 'St Matthew's Church - Walsall' Environment
[Impulse,Fs] = audioread('ir_-_location_1_s1_-_r1.wav');
% Resampling the Impulse to 44.1Hz
Impulse = Impulse(round(1:Fs/freq:size(Impulse,1)));
% Convolving Recorded Sound with the impulse
B = conv(Impulse,A);
sound(B,freq,bits);

%% Simulating in 'Sports Centre, University of York' Environment
[Impulse,Fs] = audioread('sportscentre_omni.wav');
% Resampling the Impulse to 44.1Hz
Impulse = Impulse(round(1:Fs/freq:size(Impulse,1)));
% Convolving Recorded Sound with the impulse
B = conv(Impulse,A);
sound(B,freq,bits);

%% Simulating in 'Koli National Park - Summer' Environment
[Impulse,Fs] = audioread('koli_summer_site1_1way_mono.wav');
% Resampling the Impulse to 44.1Hz
Impulse = Impulse(round(1:Fs/freq:size(Impulse,1)));
% Convolving Recorded Sound with the impulse
B = conv(Impulse,A);
sound(B,freq,bits);
