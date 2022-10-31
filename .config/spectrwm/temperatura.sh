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
