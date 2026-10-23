#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run the script with sudo access.."

fi

validate(){
    if[ $1 -ne 0 ]; then
        echo "${2}"
        exit 1
    fi
}

dnf install nginx -y