
#!/bin/bash
echo "welcome to employeewage "
isPresentfulltime=2;
ispresentparttime=1;
emprateperhr=20;
WorkingHours=100
WorkingDays=20
totalEmpHrs=0
totalWorkingDays=0
function getWorkingHours() {

case $1 in
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
}
function getDailyWages() {
        totalWorkHours=$1
        wages=$(( $totalWorkHours*$emprateperhr ))
        echo $wages



}
 while [[ $totalEmpHrs -le $WorkingHours && $totalWorkingDays -le $WorkingDays ]]
do
totalWorkingDays=$(($totalWorkingDays+1))
emphrs=$(getWorkingHours $((RANDOM%3)) )
totalEmpHrs=$(($totalEmpHrs+$emphrs))
 DailyWages[$totalWorkingDays]="$( getDailyWages $emphrs )"
done
totalSalary="$( getDailyWages $totalEmpHrs )"
echo "daily wages:" ${DailyWages[@]}

echo "all keys   :" ${!DailyWages[@]}
