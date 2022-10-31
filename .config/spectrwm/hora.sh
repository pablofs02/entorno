hora=`date +%l`

if [ $hora -eq 1 ]; then
	reloj=''
elif [ $hora -eq 2 ]; then
	reloj=''
elif [ $hora -eq 3]; then
	reloj=''
elif [ $hora -eq 4 ]; then
	reloj=''
elif [ $hora -eq 5]; then
	reloj=''
elif [ $hora -eq 6 ]; then
	reloj=''
elif [ $hora -eq 7 ]; then
	reloj=''
elif [ $hora -eq 8 ]; then
	reloj=''
elif [ $hora -eq 9 ]; then
	reloj=''
elif [ $hora -eq 10 ]; then
	reloj=''
elif [ $hora -eq 11 ]; then
	reloj=''
else
	reloj=''
fi

echo "$reloj `date +%H:%M`"
