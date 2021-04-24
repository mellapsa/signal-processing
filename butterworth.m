%design butterworth bandpass filter
[n, wn] = buttord(wpass, wstop, rpass, rstop, "s")
[num,den] = butter(n, wn, "s");
[H,W]=freqz(num,den,512);
Hz=filt(num,den,1/F)
m=20*log10(abs(H));
plot(W/pi,m)
xlabel("frekuensi normalisasi");
ylabel("attenuasi (dB)");
subplot(4,1,1)
plot(W/pi,m)
grid on
title('Butterworth Bandpass Filter');
xlabel('Frekuensi')
ylabel('Magnitude')

%design butterworth bandpass filter
[n1, wn1] = cheb1ord(wpass, wstop, rpass, rstop, "s")
[a,b] = cheby1(n1, rpass,wn1);
[J,E]=freqz(a,b,512);
Jz=filt(a,b,1/F)
m1=20*log10(abs(J));
xlabel("frekuensi normalisasi");
ylabel("attenuasi (dB)");
subplot(4,1,2)
plot(E/pi,m1)
grid on
title('Chebysev1 Bandpass Filter');
xlabel('Frekuensi')
ylabel('Magnitude')

%design butterworth bandpass filter
[n2, wn2] = cheb2ord(wpass, wstop, rpass, rstop, "s")
[c,d] = cheby2(n2, rpass,wn2);
[K,R]=freqz(c,d,512);
Kz=filt(c,d,1/F);
m=20*log10(abs(K));
xlabel("frekuensi normalisasi");
ylabel("attenuasi (dB)");
subplot(4,1,3)
plot(R/pi,m)
grid on
title('Chebysev2 Bandpass Filter');
xlabel('Frekuensi')
ylabel('Magnitude')
