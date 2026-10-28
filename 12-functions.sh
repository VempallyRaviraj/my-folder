#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..FAILED"
        exit 1
    else
        echo "${2}..SUCCESS"
    fi
}

echo "proceeding...."
dnf install nginx -y
vadilate $? "nginx installation"

dnf install nginx -y
validate $? "Mysql installation"

echo "still proceeded"






































# validate(){
#     if [ $1 -ne 0 ]; then
#         echo "${2}..FAILED"
#         exit 1
#     else
#         echo "${2}..SUCCESS"
#     fi
# }










dnf install nginx -y
validate(){
    if [ 0 -ne 0 ]; then
        echo "install nginx..FAILED"
        exit 1
    else
        echo "install nginx..SUCCESS"
    fi
}

echo $? => 0




dnf install mysql -y
validate(){
    if [ $? -ne 0 ]; then
        echo "install mysql..FAILED"
        exit 1
    else
        echo "install mysql..SUCCESS"
    fi
}
