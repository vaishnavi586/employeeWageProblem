#!/bin/bash -x
echo "welcome to employeewage "
isPresentfulltime=2;
ispresentparttime=1;
emprateperhr=20;
empcheck=$((RANDOM%3));
case $empcheck in
    $ispresentfulltime)
     emprateperhr=20;
     emphrs=8; 
     salary=$(($emphrs*$emprateperhr));
      echo $salary
     echo "employee is present"
;;
    $ispresentparttime)
     emphrs=4;
     salary=$(($emphrs*$emprateperhr));
     echo $salary
    ;;
    *)
    echo "salary=0"
    echo "employee is absent"

;;
esac
