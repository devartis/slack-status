#!/bin/bash
TOKEN=xoxp-2198507043-2198507047-291484773317-57f752895a54138694d6fcd1a68797b9
SSID=$(iwgetid -r)

if [ $SSID == 'devartisUFO' ]
then
	STATUS='At%20devartis'
	EMOJI=''
else
	STATUS='Remote'
	EMOJI=''
fi

echo https://slack.com/api/users.profile.set\?profile\=%7B%0D%0A%20%20%20%20%22$STATUS%22%2C%0D%0A%20%20%20%20%22status_emoji%22%3A%20%22%3A$EMOJI%3A%22%0D%0A%7D\&token\=$TOKEN
#curl -X POST https://slack.com/api/users.profile.set\?profile\=%7B%0D%0A%20%20%20%20%22statis%22%2C%0D%0A%20%20%20%20%22status_emoji%22%3A%20%22%3Adevartis%3A%22%0D%0A%7D\&token\=$TOKEN
