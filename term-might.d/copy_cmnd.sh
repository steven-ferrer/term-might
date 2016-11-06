#!/bin/bash
clear
./welcome.sh
echo "--------------------------Copy-Stuffs--------------------------"
echo
echo "  (1): Copy a directory"
echo "  (2): Copy a file"
echo "  (3): Copy files in a directory"
echo
echo -n "Enter your choice: "
read CHOICE
echo
if test "$CHOICE" = "1"
  then
    echo -n "Enter the path of the directory to copy: "
    read SOURCEPATH
    echo -n "Enter the destination directory: "
    read DESTPATH
    cp -vR $SOURCEPATH $DESTPATH
elif test "$CHOICE" = "2"
  then
    echo -n "Enter the path of the file to copy: "
    read SOURCEPATH
    echo -n "Enter the destination directory: "
    read DESTPATH
    cp -v $SOURCEPATH $DESTPATH
elif test "$CHOICE" = "3"
  then
    echo -n "Enter path of files to copy: "
    read SOURCEPATH
    echo -n "Enter the destination directory: "
    read DESTPATH
    cp -v $SOURCEPATH* $DESTPATH
else
  echo "It's not clear to me!"
fi
