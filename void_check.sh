#!/bin/sh
# check if all the needed packages are installed on Void linux.

for a in $(cat void_deps);do
	xbps-query $a > /dev/null || missing="$a${missing}"
done

if [ -n "$missing" ]
then
	echo "Missing packages:"
	for a in $missing;do
		echo "   $a"
	done
else
	echo "All packages are present"
fi

[ "$1" = -i ] && xbps-install $missing
