#!/bin/bash
clear
./welcome.sh
echo "-------------------------Rename-Stuffs-------------------------"
echo
echo "  (1): Rename a directory"
echo "  (2): Rename a file"
echo
echo -n "Enter your choice: "
read CHOICE
echo
if test "$CHOICE" = "1"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the path of the directory to rename: "
    read SOURCEPATH
    echo -n "Enter the new name of the directory: "
    read DESTPATH
    mv -v $SOURCEPATH $DESTPATH
elif test "$CHOICE" = "2"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the path of the file to rename: "
    read SOURCEPATH
    echo -n "Enter the new name of the file: "
    read DESTPATH
    mv -v $SOURCEPATH $DESTPATH
else
  echo "It's not clear to me!"
fi
