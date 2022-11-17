sacar="cat /sys/class/power_supply/BAT0/"
nivel=`${sacar}capacity`
estado=`${sacar}status`

if [ $nivel -le 5 ];then
	icono=''
elif [ $nivel -le 10 ]; then
	icono=''
elif [ $nivel -le 20 ]; then
	icono=''
elif [ $nivel -le 30 ]; then
	icono=''
elif [ $nivel -le 40 ]; then
	icono=''
elif [ $nivel -le 50 ]; then
	icono=''
elif [ $nivel -le 60 ]; then
	icono=''
elif [ $nivel -le 70 ]; then
	icono=''
elif [ $nivel -le 80 ]; then
	icono=''
elif [ $nivel -le 90 ]; then
	icono=''
else
	icono=''
fi

if [ $estado != "Discharging" ]; then
	icono="${icono}"
else
	icono="${icono} "
fi

echo "$icono${nivel}%"
