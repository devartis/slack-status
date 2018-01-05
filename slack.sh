#!/bin/bash

#NON_ROOT_USERNAME=$SUDO_USER
TOKEN=$(</home/$SUDO_USER/.slack-token.config)
SSID=$(iwgetid -r)

if [ $SSID == 'devartisUFO' ]
then
	STATUS='At%20devartis'
	EMOJI='devartis'
elif [ $SSID == 'Keepcon' ]
then
	STATUS='At%20Keepcon'
	EMOJI='keepcon'
else
	STATUS='Working%20remotely'
	EMOJI='house_with_garden'
fi

curl -X POST https://slack.com/api/users.profile.set\?profile\=%7B%0D%0A%20%20%20%20%22status_text%22%3A%20%22$STATUS%22%2C%0D%0A%20%20%20%20%22status_emoji%22%3A%20%22%3A$EMOJI%3A%22%0D%0A%7D\&token\=$TOKEN
