#!/bin/bash


path="/home"
file="Lista_Precios"
user_owner="roxs"


chown "$user_owner": "$path/$file"

if [ $USER != $user_owner ]
then
    chmod ugo=  "$path/$file"
else
    chmod ugo= "$path/$file"
    ls -lh
    chmod u+rwx "$path/$file"
fi


