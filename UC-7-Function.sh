#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHrs=0
totalworkingDays=0

function getWorkHours()
{
	randomCheck=$((RANDOM%3))
case $randomCheck in
                        $isPartTime )
                                empHrs=4
                         ;;
                        $isFullTime )
                                empHrs=8
                         ;;
                         *)
                                empHrs=0
                         ;;
esac
}
while [[ $totalEmpHrs -lt $maxRateInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
      ((totalWorkingDays++))
 	getWorkHours
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$empRatePerHr))
echo $totalSalary
