#!/bin/bash -x

isPresent=0
randomCheck=$((Random%2))

if (( $isPresent == $randomCheck ))
then
	empHrs=8
	empRatePerHr=20
	salary=$(($empHrs*$empRatePerHr))
else
	salary=0
fi
