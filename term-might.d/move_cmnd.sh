#!/bin/bash
clear
./welcome.sh
echo "-------------------------Move-Things---------------------------"
echo
echo "  (1): Move a directory"
echo "  (2): Move a file"
echo "  (3): Move files"
echo
echo -n "Enter your choice: "
read CHOICE
echo
if test "$CHOICE" = "1"
  then
    echo -n "Enter the path of the directory to move: "
    read SOURCEPATH
    echo -n "Enter the destination directory: "
    read DESTPATH
    mv -v $SOURCEPATH $DESTPATH
elif test "$CHOICE" = "2"
  then
    echo "Note: You can pass multiple arguments to the command."
    echo
    echo -n "Enter the path of the file to move: "
    read SOURCEPATH
    echo -n "Enter the destination directory: "
    read DESTPATH
    mv -v $SOURCEPATH $DESTPATH
elif test "$CHOICE" = "3"
  then
    echo "Note: You can pass multiple arguments to the command."
    echo
    echo -n "Enter the path of files to move: "
    read SOURCEPATH
    echo -n "Enter the destination directory: "
    read DESTPATH
    mv -v $SOURCEPATH* $DESTPATH
else
  echo "It's not clear to me!"
fi
