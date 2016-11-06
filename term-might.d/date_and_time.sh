#!/bin/bash
clear
./welcome.sh
echo "---------------------Date-and-Time-Utilities-------------------"
echo
echo "  (1): Display this month's calendar, date and time"
echo "  (2): Display this year's calendar"
echo
echo -n "Enter your choice: "
read CHOICE
echo
if test "$CHOICE" = "1"
  then
    cal
    echo "Today is $(date +%A), $(date +%B%e,\ %G)"
    echo "It is now $(date +%H:%M:%S)"
elif test "$CHOICE" = "2"
  then
    cal -y
else
  echo "It's not clear to me!"
fi
