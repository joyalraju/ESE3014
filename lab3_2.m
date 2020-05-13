walsh= [1 1 1 1 1 1 1 1; -1 -1 -1 -1  1 1 1 1; -1 -1 1 1 1 1 -1 -1;
 1 1 -1 -1 1 1 -1 -1;
 1 -1 -1 1 1 -1 -1 1;
 -1 1 1 -1 1 -1 -1 1;
 -1 1 -1 1 1 -1 1 -1; 1 -1  1 -1 1 -1 1 -1]
 usr1=input("choose line user 1 \n");
 usr2=input("choose line user 2 \n");
 usrline1=walsh(usr1,:);
 usrline2=walsh(usr2,:);
 usr1msg=input("message of user 1 \n",'s');
 usr2msg=input("message of user 2 \n",'s');
 msg1=uint8(usr1msg);
 usr1info=(dec2bin(msg1))'
 %usr1info=usr1in(1:8)
 usr1encode=(usrline1 .* usr1info)
 msg2=uint8(usr2msg);
 usr2info=(dec2bin(msg2))'
 %usr2info=usr2in(1:8)
 usr2encode=(usrline2 .* usr2info)
 combine=usr1encode+usr2encode
 m=8;
 usr1deco=combine .* usrline1
 usr1decomsg=((sum(usr1deco,2))/m)';
 message1=int2str(bin2dec(usr1decomsg))
 usr2deco=combine .* usrline2
 usr2decomsg=((sum(usr2deco,2))/m)';
 message2=int2str(bin2dec(usr2decomsg))
