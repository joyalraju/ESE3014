walsh= [1 1 1 1 1 1 1 1; -1 -1 -1 -1  1 1 1 1; -1 -1 1 1 1 1 -1 -1;
 1 1 -1 -1 1 1 -1 -1;
 1 -1 -1 1 1 -1 -1 1;
 -1 1 1 -1 1 -1 -1 1;
 -1 1 -1 1 1 -1 1 -1; 1 -1  1 -1 1 -1 1 -1]
 usr1=input("choose line for user 1 \n");
 usr2=input("choose line for user 2 \n");
 usr3=input("choose line for user 3 \n");
 usrline3=walsh(usr3,:);
 usrline1=walsh(usr1,:);
 usrline2=walsh(usr2,:);
 usr1info=input("message of user 1 \n");
 usr2info=input("message of user 2 \n");
 usr3info=input("message of user 3 \n");
 usr1encode=usrline1 .* usr1info
 usr2encode=usrline2 .* usr2info
 usr3encode=usrline3 .* usr3info
 combine=usr1encode+usr2encode+usr3encode
 m=8;
 usr1deco=combine .* usrline1;
 usr1decomsg=((sum(usr1deco,2))/m)'
 usr2deco=combine .* usrline2;
 usr2decomsg=((sum(usr2deco,2))/m)'
 usr3deco=combine .* usrline3;
 usr3decomsg=((sum(usr3deco,2))/m)'
 
 