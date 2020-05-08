e=input("Enter e of public key: \n");
n=input("Enter n of public key: \n");
pq=factor(n);
p=pq(1)
q=pq(2)
phi=(p-1)*(q-1)
i=1;
reminder=1;
while reminder > 0
  k=(phi*i)+1;
   reminder=rem(k,e);
    i=i+1;
end
d=k/e
printf("Hence private key is = (%d,%d) \n",n,d);
printf("\n\n***CRACKED...!*** \n");
