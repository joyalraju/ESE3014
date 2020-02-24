t=0:.01:6*pi;
b=input("enter bit number\n");
fs=input("enter sampling period\n");
inp=12*sin(t);
subplot(4,1,1)
plot(t,inp);xlabel("input");
%sampling
ts=(0:4*(pi/fs):6*pi);
samp=12*sin(ts);
subplot(4,1,2)
stem(samp);xlabel("sampling");
%uniform quantizing using mid-rise type
ymax=12;
ymin=-12;
size=2*ymax/(2^b);
div=(ymin-(size/2)):size:(ymax+(size/2));
val=[ymin:size:ymax];
[index,quants]= quantiz(samp,val,div);
l1=length(index);
l2=length(quants);
for i=1:l1
  if(index(i)~=0)
  index(i)=index(i)-1;
  end
i=i+1;
end
for i=1:l2
  if(quants(i)==ymin-(size/2))
  quants(i)=ymin+(size/2);
  end
end
subplot(4,1,3)
stem(quants);xlabel("quantized signal");
%encoding
bin=zeros(l1,b);
for i=1:l1
  fin=index(1,i);
  tmp=b;
  while 1<fin
fin=floor(fin/2);
bin(i,tmp)=rem(fin,2);
tmp=tmp-1;
  end
bin(i,1)=fin;
end
bitr=1;
%using return to zero encoding
[t,s]=urz(bin,bitr);
subplot(4,1,4)
plot(t,s);
  
