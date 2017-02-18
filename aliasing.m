
%aliasing
%f(t) = cos(2*pi*f*t)
%f(kT) = cos(2*pi*f*kT) = cos(omega * k)
f = 20; %cont. function freq
fs = 75; %sample frequency
ts = 1/fs;
t_samp = [0:ts:0.2];%sampled times
my_sig = cos(2*pi*f*t_samp);
figure; stem(my_sig);
my_fft = fft(my_sig);
my_size   = length(my_fft);
my_fft = my_fft(1:my_size/2+1); %only want positive frequencies
k = [0:length(my_fft)-1];
figure; stem(k*fs/my_size,abs(my_fft)),title('fft');
        %the frequency bins are separated by fs/size=75/16=4.6875 Hz.
        %The closest bin to my_sig's 20Hz freq is 4.6875*4=18.75Hz. 
        %As such, the largest magnitude in the frequency domain 
        %is located in this bin. 

%Aliasing occurs when we sample below the Nyquist rate. For example, 
%a 95 Hz signal would look exactly like our previous 20 Hz signal:
my_alias = cos(2*pi*95*t_samp);
figure; stem(my_alias),title('(alias)');
my_fft = fft(my_alias);
my_size   = length(my_fft);
my_fft = my_fft(1:my_size/2+1); %only want positive frequencies
k = [0:length(my_fft)-1];
figure; stem(k*fs/my_size,abs(my_fft)),title('fft (alias)');
%A brief comparison of the graphs for the 20 Hz signal and the graphs for
%the 95 Hz signal corroborates the previous assertion.

%a final note: frequency analysis can often be useful when time domain
%analysis appears futile in the presense of noise. For example:
f = 20; %cont. function freq
fs = 75; %sample frequency
ts = 1/fs;
t_samp = [0:ts:1];%sampled times
my_sig = cos(2*pi*f*t_samp) + randn(size(t_samp));
figure; plot(my_sig),title('time domain - noisy');
my_fft = fft(my_sig);
my_size = length(my_fft);
my_fft = my_fft(1:my_size/2+1); %only want positive frequencies
k = [0:length(my_fft)-1];
figure; stem(k*fs/my_size,abs(my_fft)),title('fft with noise');
%As can clearly be seen in the graphs, the time domain description looks
%like nothing but noise, whereas the frequency domain description reveals
%a strong ~20Hz dominance in the noisy signal.




