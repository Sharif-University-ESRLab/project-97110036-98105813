#!/bin/bash

lamp_one_off() {
	curl https://myproject-magiclamp.fandogh.cloud/control/manualcontrol/turnoff/1 -X GET
}


lamp_one_on() {
	curl https://myproject-magiclamp.fandogh.cloud/control/manualcontrol/turnon/1 -X GET
}


lamp_two_off() {
	curl https://myproject-magiclamp.fandogh.cloud/control/manualcontrol/turnoff/2 -X GET
}


lamp_two_on() {
	curl https://myproject-magiclamp.fandogh.cloud/control/manualcontrol/turnon/2 -X GET
}

for i in {0..99}
do
	delay=1 #$((1 + $RANDOM % 3))
	sleep $delay
	t=$(($i%2))
	case $t in
		0)
			lamp_one_on &
			lamp_two_on &
			;;
		1)
			lamp_one_off &
			lamp_two_off &
			;;
	esac
done

