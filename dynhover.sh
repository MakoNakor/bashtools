#!/bin/bash

dt=$(date)
#!/bin/bash

# find your DNS ID here: https://www.hover.com/api/domains/yourdomain.com/dns/
# (replace "yourdomain.com" with your actual domain, and look for the record
# you want to change. The ID looks like: dns1234567)
UNAME=$USERNAME
PWORD=$PASSWORD
DOMAIN=$DOMAIN
firstrun=0
ipfile="${CONFIG_DIR}lastip"

# get current ip
IP=$(curl "ifconfig.me" -s)

# check for file to store last ip and if it doesn't exist, create it and write current ip to it
if [ ! -e "$ipfile" ] ; then
	echo "lastip file doesn't exist. creating now."
	touch "$ipfile"
	if [ ! -w "$ipfile" ] ; then
		echo "cannot write to $ipfile"
		exit 1
	else
		# can write to new file, so insert variable
		echo "lastip=$IP" > $ipfile
		echo "wrote current ip into new file $ipfile"
		firstrun=1
	fi
fi


# get ip last time script ran
source $ipfile
# compare ip in file to current
if [ $IP != $lastip ] || [ $firstrun = 1 ]
then
	# not the same or first time running script.  login, get cookie, then update.
	echo "Updating @ record"
	/usr/local/bin/lexicon hover --auth-username ${USERNAME} --auth-password ${PASSWORD} update ${DOMAIN} A --name="@.${DOMAIN}" --content="${IP}"
	# save this new ip to file
	echo "Updating * record"
	/usr/local/bin/lexicon hover --auth-username ${USERNAME} --auth-password ${PASSWORD} update ${DOMAIN} A --name="*.${DOMAIN}" --content="${IP}"
	echo "lastip=$IP" > $ipfile
	echo
else
	echo "ip hasn't changed"
fi
