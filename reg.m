y=0:1:100;
in=abs(sin(y)+cos(2*y)+sin(4*y));
noise=2*randn(size(y));
disin=in+noise;
subplot(4,1,1);
plot(y,disin)
title('input signal with noise')
%pulse train
n = 1:100;
s = [ones(1,100)];
subplot(4,1,2)
stem(n,s)
title('pulse signal')
%amplifer and equilizer
ampfr=2;
thrs=2.5;
equisig=ampfr*disin;
subplot(4,1,3);
plot(y,equisig)
title('amplifier output')
line([0,100],[thrs,thrs]);
%Decision making block 
i=1;
while(i<=100)
if(equisig(1,i)>thrs)
deci(1,i)= 1; 
else
deci(1,i)=0;
endif
i++;
endwhile
disp(deci);
subplot(4,1,4);
plot(deci);
title('output signal');
%calculate bit error rate
inctr=0;
i=1;
while(i <=100);
if(disin(1,i) > 0)
inctr++;
endif;
i++;
endwhile;
outctr=0;
i=1;
while(i <=100);
if(deci(1,i) > 0)
outctr++;
endif;
i++;
endwhile;
rate=(inctr-outctr)/inctr;
printf("error rate = %d",rate);