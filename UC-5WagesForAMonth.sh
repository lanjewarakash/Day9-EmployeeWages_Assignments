#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numberOfWorkingDays=20
totalSalary=0

for (( day=1; day<=$numberOfWorkingDays; day++ ))
do
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
     salary=$(($empHrs*$empRatePerHr))
     totalSalary=$(($totalSalary+$salary))
done
