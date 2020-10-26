function I = solar()
  Np =1; % number of parallel pv cells
  Ns=72;% number of serial pv cells
 A=1.3; % Ideality factor of diode
 k=1.3805*10^(-23);  %Boltzmann constant 
 Ki=0.0052; % Cell short circuit current temperature coefficient of Isc
 Isc=9.06;%Short-circuit current
 Voc=46.22;%open circuit voltage
 q=1.602*10^(-19);% charge of electron
 Eg=1.1;%energy band Gap 
Tr=298;% Reference temperature in kelvin(25 degree celcius) 
Gref=1000;% Solar Irradiance	at stc 
 val= input('Enter the value of Temperature in degree celcius: ');
  To=273+val;%temperature in kelvin
  G=input('Enter the Value of solar irradiance: ');
  eq1=Ns*k*A*To;% equation 1
  Iph=(((To-Tr)*Ki)+Isc)*G/Gref %photon current
  Irs= Isc/(exp((q*Voc)/eq1)-1) %reverse saturation current
  N=[-20:20]; %period of ramp signal
V=N.*(N>=0); %ramp signal indicates the variable voltage from pv cells.
subplot(3,1,1);
plot(N,V); % plot of input voltage
 title ('Input Voltage')
 ylabel('Voltage')
u=(q*Eg/(A*k))*((1/Tr)-(1/To));
Is=Irs*((To/Tr)^3)*exp(u)%saturation current
I=Np*Iph-(Np*Is*(exp(q*(V+Irs)/eq1)-1))%output current
  subplot(3,1,2);
  plot(V,I);
  title('V-I chara')
  xlabel('Voltage')
  ylabel('Current')
 P=V.*I;% output power
 subplot(3,1,3);
  plot(V,P);
  title('P-V chara')
  xlabel('Voltage')
  ylabel('Power')
  endfunction
