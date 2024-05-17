#!/bin/sh
# check if all the needed packages are installed on Arch linux.

package_list=$(cat arch_deps)
missing=""

for pkg in $package_list;do
	pacman -Q $pkg 2>/dev/null ||
	missing="$pkg ${missing}"
done

[ -z "$missing" ] && echo "All packages are present" && exit 0

echo "Missing packages:"
for pkg in $missing;do
	echo "   $pkg"
done


[ "$1" != -i ] && exit 0

pacman -S $missing
