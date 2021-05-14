#!/bin/bash
echo -n "Enter your URL (your_url.com no 'https') \"url\" "
read user_url
echo "The value of \"url\" is now $user_url."


mkdir ~/../srv/www/
mkdir ~/../srv/www/$user_url