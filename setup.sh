#!/bin/sh

# telegram configuration
while [ -z "$bot_token" ]
do
    read -p "Please enter Telegram bot token : " bot_token
done

while [ -z "$tele_id" ]
do
    read -p "Please check your id in https://telegram.me/userinfobot \n Please enter Telegram user id : " tele_id
done

# github configuration
while [ -z "$username" ]
do
    read -p "GitHub Username : " username
done

while [ -z "$password" ]
do
    read -p "GitHub Password : " password
done

touch config.json

cat << EOF > config.json
{
	"bot_token":"$bot_token",
	"tele_id":"$tele_id",
	"username":"$username",
	"password":"$password"
}
EOF

echo "\n\nDone."
