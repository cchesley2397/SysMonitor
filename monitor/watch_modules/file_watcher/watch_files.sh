#!/bin/bash

WATCHLIST_FILENAME="watchlist.txt"

readarray -t FILES < "${WATCHLIST_FILENAME}"

for i in "${FILES[@]}"
do
	FILENAME=${i//\/}

	NEWFILE="${FILENAME}_new.txt"
	CURRENTFILE="${FILENAME}_current.txt"
	if test -f "$CURRENTFILE"; then
		cat $i > $NEWFILE
		chmod 777 $CURRENTFILE
		echo $CURRENTFILE
		echo $NEWFILE
		CHANGES=diff -y -a "./etcpasswd_current.txt" "./etcpasswd_new.txt"			#"$CURRENTFILE" "$NEWFILE"
		if $CHANGES; then
			echo "Changes found:"
			#echo $CHANGES
		else
			echo "No difference"
		fi
		yes | cp -f $NEWFILE $CURRENTFILE
	else
		cat $i > "$CURRENTFILE"
		chmod 777 "$CURRENTFILE"
	fi
done
