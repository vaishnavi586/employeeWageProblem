#!/bin/bash -x
echo "welcome to employeewage "
isPresentfulltime=2;
ispresentparttime=1;
emprateperhr=20;
randomcheck=$((RANDOM%3));
if [ $isPresentfulltime -eq $randomcheck ]
then
     emprateperhr=20;
     emphrs=8; 
     salary=$(($emphrs*$emprateperhr));
      echo $salary
     echo "employee is present"
elif [ $isPresentparttime -eq $randomcheck ]
then
     emphrs=4;
     salary=$(($emphrs*$emprateperhr));
     echo $salary
else
    echo "salary=0"
    echo "employee is absent"

fi
