y=0:.1:10;
x=0:.1:10;
[x,y]=meshgrid(x);
z=exp(y/2);
mesh(x,y,z)
xlabel("time");
ylabel("time");
zlabel("exponential");
