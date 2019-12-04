#!/bin/bash -x

echo "enter text file name"
read a

	if [ -d $a ]
	then
	echo "file already exists"
	
	else
	  mkdir $a
	   echo "file created successfully"
	fi



 
