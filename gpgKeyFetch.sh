#!/bin/bash
file=("pgp.mit.edu" "https://keybase.io/" "https://keys.openpgp.org/" "https://keyserver.pgp.com/vkd/GetWelcomeScreen.event" "https://keyoxide.org/" "https://www.rossde.com/PGP/pgp_keyserv.html" "https://www.duinsoft.nl/keyservers.php?t=en" "http://sks-keyservers.net/" "http://keys.gnupg.net/")

if [ $# -le 0 ] 
then
	echo "this first(and only argument must be keyid"
fi

echo "getting public key with id $1"
for i in ${file[*]}
do
	echo $i
	gpg --keyserver $i --receive-keys $1
done

