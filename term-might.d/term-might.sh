#!/bin/bash
readChoice(){
  if test $CHOICE -eq 1 &> /dev/null
    then
      echo
      echo "THANK YOU FOR USING TERM-MIGHT!"
      echo 'GOODBYE! HAVE A NICE DAY!'
      echo
      exit
  elif test $CHOICE -eq 2 &> /dev/null
    then
      #echo "You choose Date & Time"
      ./date_and_time.sh
  elif test $CHOICE -eq 3 &> /dev/null
    then
      #echo "You choose Copy"
      ./copy_cmnd.sh
  elif test $CHOICE -eq 4 &> /dev/null
    then
      #echo "You choose Move"
      ./move_cmnd.sh
  elif test $CHOICE -eq 5 &> /dev/null
    then
      #echo "You choose Rename"
      ./rename_cmnd.sh
  elif test $CHOICE -eq 6 &> /dev/null
    then
      #echo "You choose Create"
      ./create_cmnd.sh
  elif test $CHOICE -eq 7 &> /dev/null
    then
      #echo "You choose Compress/Archive"
      ./compress_cmnd.sh
  elif test $CHOICE -eq 8 &> /dev/null
    then
      #echo "You choose List Files in Current Directory"
      clear
      ./welcome.sh
      echo "--------------------List-Files-in-a-Directory------------------"
      echo
      echo -n "Enter the path of the directory: "
      read LISTDIR
      ls -lsh $LISTDIR
  elif test $CHOICE -eq 9 &> /dev/null
    then
      clear
      ./delete_cmnd.sh
  elif test $CHOICE -eq 10 &> /dev/null
    then
      #echo "You choose Display All Processes"
      top #displays processes
  else
      #cathes any garbage inputs
      echo "I think that's is not in the list of choices."
      CHOICE=0 #sets the CHOICE back to 0 to continue the program
  fi
}
CHOICE=0; #will contain the choice of the user
while [ $CHOICE -ge 0 -a $CHOICE -le 10 ] ;
do
  clear #clears the screen to remove clutters
  ./welcome.sh
  ./menu.sh #runs the ter-might-menu.sh script which displays menu
  #get the number of choice
  echo -n "Enter your choice: "
  read CHOICE

  echo
  readChoice $CHOICE;
  echo
  echo "Press ENTER to continue or type CTRL-C to exit"
  read NOTHING
done
