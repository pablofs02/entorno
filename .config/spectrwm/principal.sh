demora=10
i=1
while :; do
	if [ `expr $i % 20` -eq 0 ]; then
		~/.config/spectrwm/peticion.sh &
	fi

	bateria=$( ~/.config/spectrwm/bateria.sh )
	reloj=$( ~/.config/spectrwm/hora.sh )
	fecha=" `date +'%a %d %b %Y'`"
	temperatura=$( ~/.config/spectrwm/temperatura.sh )
	internet=$( ~/.config/spectrwm/internet.sh )
	memoria=$( ~/.config/spectrwm/memoria.sh )
	ventana="+D "
	aplicacion=" +C"
	procesador=""

	izquierda="+|L $ventana $aplicacion"
	centro="+|C $reloj"
	derecha="+|R $bateria $temperatura $memoria $internet $fecha"

	echo -e "$izquierda $centro $derecha"

	i=$(( $i + 1 ))

	sleep $demora
done
