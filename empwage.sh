#!/bin/bash 
echo "welcome to employeewage "
isPresentfulltime=2;
ispresentparttime=1;
emprateperhr=20;
WorkingHours=100
WorkingDays=20
totalEmpHrs=0
totalWorkingDays=0
while [[ $totalEmpHrs -le $WorkingHours && $totalWorkingDays -le $WorkingDays ]]
do
        totalWorkingDays=$(($totalWorkingDays+1))
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
     emphrs=0;
    echo "salary=0"
    echo "employee is absent"

;;
esac
totalEmpHrs=$(($totalEmpHrs+$emphrs))
totalSalary=$(($totalEmpHrs*$emprateperhr))
done
echo "total sal" $totalSalary
