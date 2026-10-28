#!/bin/bash

to_team=$1
server_ip=$2
alert_type=$3
message=$4
to_email=$5
subject=$6

final_message=$(echo "$message" | sed 's/[.|$*^\\\/]/\\&/g')
final_body=$(sed -e "s/To_team/$to_team/g" -e "s/ALERT_TYPE/$alert_type/g" -e "s/SERVER_IP/$server_ip/g" -e "s/MESSAGE_BODY/$final_message/g" mail_template.html)
{
echo "To: $to_email"
echo "Subject: $subject"
echo "Content-Type: text/html"
echo ""
echo "$final_body"
} | msmtp "$to_email"