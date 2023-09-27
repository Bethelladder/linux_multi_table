#! /bin/bash

result=0
if [ $# -eq 2 ]
then
	if [ $1 -le 0 ] || [ $2 -le 0 ] ; then
		echo "Input must be greater than 0"
	else
		for((i=1; i<=$1; i++))
		do
	        	for((j=1; j<=$2; j++))
	        	do
	                	result=`expr $j \* $i`
	                	echo -n -e "$i*$j=$result \t"
	        	done
	
	        	echo " " 
		done
	fi
else
	echo "Invalid input"
fi
