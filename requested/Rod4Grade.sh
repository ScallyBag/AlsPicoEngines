#!/bin/bash
clear

echo "Enter a grade between 800 & 2800, this will be used by all RodentIV personalities"
read grade
if [[ "$grade" =~ ^[0-9]+$ && "$grade" -gt 799 && "$grade" -lt 2801 ]]
then
    echo "Applying your selected grade to rodentIV.uci"
    sed -i "5s/.*/UCI_Elo = $grade/" /opt/picochess/engines/armv7l/rodentIV.uci
	if [ $grade -lt 2800 ]
	then
	sed -i '4s/.*/UCI_LimitStrength = true/' /opt/picochess/engines/armv7l/rodentIV.uci
	else
	sed -i '4s/.*/UCI_LimitStrength = false/' /opt/picochess/engines/armv7l/rodentIV.uci
	fi
    echo "All done, reboot and Select a RodentIV personality from the clock menu"
else
    echo "Wrong Grade entered, terminating Program"
fi
