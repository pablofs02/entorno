demora=5

bateria_actual() {
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
}

memoria_actual() {
	res=`cat /proc/meminfo`

	total=`echo $res | awk -F ' ' '{print $2}'`
	libre=`echo $res | awk -F ' ' '{print $8}'`

	usada=$(( 100 - $libre * 100 / $total ))

	echo " ${usada}%"
}

temperatura_actual() {
	temperatura=`sensors | grep 'Package id 0' | awk -F '[+.]' '{print $2}'`

	if [ $temperatura -gt 70 ]; then
		icono=''
	elif [ $temperatura -gt 60 ]; then
		icono=''
	elif [ $temperatura -gt 50 ]; then
		icono=''
	elif [ $temperatura -gt 40]; then
		icono=''
	else
		icono=''
	fi

	echo "$icono ${temperatura}ºC"
}

while :; do
	bateria=$(bateria_actual)
	reloj=`date +'%H:%M'`
	fecha=" `date +'%a %d %b %Y'`"
	temperatura=$(temperatura_actual)
	memoria=$(memoria_actual)
	ventana="+D "
	aplicacion=" +C"
	procesador=""

	izquierda="+|L $ventana $aplicacion"
	centro="+|C $reloj"
	derecha="+|R $bateria $temperatura $memoria $fecha"

	echo -e "$izquierda $centro $derecha"

	sleep $demora
done
