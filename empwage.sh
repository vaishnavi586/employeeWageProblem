#!/bin/bash -x
echo "welcome to employeewage pb"
isPresent=1;
randomcheck=$((RANDOM%2));
if [ $isPresent -eq $randomcheck ]
then
     emprateperhr=20;
     emphrs=8; 
     salary=$(($emphrs*$emprateperhr));
      echo $salary
     echo "employee is present"
else 
      echo "salary =0"
    echo "employee is absent"
fi
