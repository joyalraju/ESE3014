inamp=2;
freqin=1000;
 tfreq=1/freqin;
 for N=0:50
 T=N*tfreq+(0:.00001:3*tfreq);
 input=inamp*cos(2*pi*freqin*T);
 carrier=5*cos(2*pi*10000*T);
output=5*[1+.5*cos(2*pi*freqin*T)].*cos(2*pi*10000*T);
%am=Ac[1+Modindex*cos(2*pi*fin*T)]*cos(2*pi*fcarr*T);
noise=randn(size(T));
final=output+noise;
subplot(3,1,1);
plot(T,input);ylabel('input singal');
subplot(3,1,2);
plot(T,carrier);ylabel('carrier singal');
subplot(3,1,3);
plot(T,final);ylabel('final singal');xlabel(N)
drawnow
end