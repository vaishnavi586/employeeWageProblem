ispresentPartTime=1
ispresentFullTime=2
empRatePerHr=20
TotalWorkingDays=20
WorkingHours=100
totalEmpHrs=0
totalWorkingDays=0
function getWorkingHours() {
        case $1 in
                $ispresentPartTime)
                        empHrs=4
                        ;;
                $ispresentFullTime)
                        empHrs=8
   			;;
                *)
                        empHrs=0
                        ;;
        esac
	echo $empHrs
}
function getDailyWages() {
        totalWorkHours=$1
        wages=$(( $totalWorkHours*$empRatePerHr ))
        echo $wages
}
while [[ $totalEmpHrs -lt $WorkingHours && $totalWorkingDays -lt $TotalWorkingDays ]]
do
        totalWorkingDays=$(($totalWorkingDays+1))
	empHrs=$(getWorkingHours $((RANDOM%3)) )
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
        DailyWages[$totalWorkingDays]="$( getDailyWages $empHrs )"
done
totalSalary="$( getDailyWages $totalEmpHrs )"
echo "daily wages:" ${DailyWages[@]}

echo "all keys   :" ${!DailyWages[@]}
