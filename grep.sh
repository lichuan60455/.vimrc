#!/bin/sh

grepc()
{
	if [ "$#" == "1" ]
	then
		grep $1 . --include='*.cpp' --include='*.h' --include='*.inc' --include='Makefile' --include='*.mk' --include='*.sh' --color=auto -n -R -i
	elif [ "$#" == "2" ]
	then
		grep $1 $2 --include='*.cpp' --include='*.h' --include='*.inc' --include='Makefile' --include='*.mk' --include='*.sh' --color=auto -n -R -i
	elif [ "$#" == "3" ]
	then
		grep $1 $2 --include=$3 --color=auto -n -R
	fi
}
help_message()
{
	echo  "Wrong type!"
	echo "grepc [something] [filename]"
	echo "argv[1] your target string"
	echo "argv[2] your target file/dir"
	echo "argv[3] your target file include"
	exit 0

}
if [ "$#" == "1" ]
then
	grepc $1
elif [ "$#" == "2" ]
then
	grepc $1 $2
elif [ "$#" == "3" ]
then
	grepc $1 $2 $3
else
	help_message
fi
