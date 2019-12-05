#!/bin/bash -x
function main(){
echo "conversion from celcius to fahrenheit enter 1 "
echo "conversion from fahrenheit to celcius enter 2 "
read a
echo "enter temparature"
read b

case  $a in
	1)
		result=$(getCelciusToFahrenheit $b )
		echo "Celcius to farenheit  $result"
	;;
	2)
		result=$(getFahrenheitToCelcius $b )
		echo "Fahrenheit to celcius  $result"
	;;
esac
}
function getCelciusToFahrenheit(){
	degC=$1
	degF=$(($degC*$((9/5))+32))
	echo $degF
}
function getFahrenheitToCelcius(){
	degF=$1
	degC=$((($degF-32)*$(5/9)))
	echo $degF
}

main
