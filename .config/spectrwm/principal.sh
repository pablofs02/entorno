demora=10
while :; do
	bateria=$( ~/.config/spectrwm/bateria.sh )
	reloj=`date +'%H:%M'`
	fecha=" `date +'%a %d %b %Y'`"
	temperatura=$( ~/.config/spectrwm/temperatura.sh )
	memoria=$( ~/.config/spectrwm/memoria.sh )
	ventana="+D "
	aplicacion=" +C"
	procesador=""

	izquierda="+|L $ventana $aplicacion"
	centro="+|C $reloj"
	derecha="+|R $bateria $temperatura $memoria $fecha"

	echo -e "$izquierda $centro $derecha"

	sleep $demora
done
