res=`cat /proc/meminfo`

total=`echo $res | awk -F ' ' '{print $2}'`
libre=`echo $res | awk -F ' ' '{print $8}'`

usada=$(( 100 - $libre * 100 / $total ))

echo " ${usada}%"
