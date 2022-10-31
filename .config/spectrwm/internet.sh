resultado=`cat ~/.config/spectrwm/vel_red.var`

velocidad_bajada=`echo $resultado | awk -F '[ .]' '{print $6}'`
velocidad_subida=`echo $resultado | awk -F '[ .]' '{print $10}'`

if [ $velocidad_bajada -eq "" ]; then
	bajada=" ¿?M"
else
	bajada=" ${velocidad_bajada}M"
fi
if [ $velocidad_subida -eq "" ]; then
	subida=" ¿?M"
else
	subida=" ${velocidad_subida}M"
fi

echo "$bajada $subida"
