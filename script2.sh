#!/usr/bin/env bash
output=/tmp/output
current_users=/var/log/current_users
user_changes=/var/log/user_changes
DATE=`date +%Y-%m-%d`
TIME=`date +%H:%M:%S`
new_md5sum=$(cat "$output")
old_md5sum=$(cat "$current_users")
if [ "$new_md5sum" != "$old_md5sum" -a -s "$current_users" ];  then
    echo "$DATE $TIME changes occurred" >> "$user_changes"
    echo "$new_md5sum" > "$current_users"
    rm -v "$output"
   elif [ ! -s "$current_users" ]; then
        echo "$new_md5sum" > "$current_users"
         rm -v "$output"
    else
        rm -v "$output"
fi
