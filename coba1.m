%Example 8.3 Generate the coefficients of two rectangular window filters and
% find and plot their magnitude spectra.
%
N = 256; % Padding for Fourier transform (arbitrary)
fs = 1000; % Sampling frequency (assumed)
f = (1:N)*fs/N; % Frequency vector for plotting
fc = 300/fs; % Cutoff frequency (normalized to fs)
L =[65];
%L = [17]; % Filter lengths (filter order þ 1)
for m = 1:2 % Loop for the two filter lengths
  for k = 1:L(m)
    n = k-(L-1)/2 ; % Whole number shift
    if n == 0 % Generate sin(n)/n function. 
      b(k) = 2*fc; % Case where denominator is zero.
    else
      b(k) = sin(2*pi*fc*n)/(pi*n); % Filter impulse response
    end
  end
% Now plot the filter's spectrum
H = fft(b,N); % Calculate spectrum
subplot(1,2,m); % Plot magnitude spectrum
plot(f(1:N/2),abs(H(1:N/2)),'k');
...labels and title...
end