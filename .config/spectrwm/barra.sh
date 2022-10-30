SLEEP_SEC=1
while :; do
	bateria=$( ~/.config/spectrwm/bateria.sh )

	eval $(sensors 2>/dev/null | sed s/[°+]//g | awk '/^Core 0/ {printf "CORE0TEMP=%s;", $3};' -)
	temperatura="$I_TERMOMETRO4 $CORE0TEMP"
	eval $(awk '/^MemTotal/ {printf "MTOT=%s;", $2}; /^MemFree/ {printf "MFREE=%s;",$2}' /proc/meminfo)
	MUSED=$(( $MTOT - $MFREE ))
	MUSEDPT=$(( ($MUSED * 100) / $MTOT ))
	memoria=" ${MUSEDPT}%"
	ventana="+D "
	aplicacion=" +C"
	fecha=" `date +'%a %d %b %Y'`"
	reloj="$I_RELOJ04 `date +%H:%M`"
	procesador=""
	subida=""
	bajada=""
	izquierda="+|L $ventana $aplicacion"
	centro="+|C $reloj"
	derecha="+|R $bateria $temperatura $memoria $fecha"

	echo -e "$izquierda $centro $derecha"

	sleep $SLEEP_SEC
done
