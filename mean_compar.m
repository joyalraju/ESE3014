a = randi(1000,1,50)
om=mean(a)
for i=1:1:5
  b=randi(randi(a),1,5)
  m=mean(b)
  if (m>om)
    printf("mean is greater than overall mean \n")
  elseif (m<om)
     printf("mean is less than overall mean \n")
    else
      printf("mean is equa than overall mean \n")
    end
    end
