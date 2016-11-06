#!/bin/bash
clear
./welcome.sh
echo "-------------------------Delete-Stuffs-------------------------"
echo
echo "  (1): Delete a directory"
echo "  (2): Delete file/s"
echo
echo -n "Enter your choice: "
read CHOICE
echo
if test "$CHOICE" = "1"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo "Warning: Pass a star (*) at your own risk."
    echo "      This will delete all the files under the specified directory"
    echo
    echo -n "Enter the path of the directory to delete: "
    read DIRPATH

    if test "$DIRPATH" != "*"
      then
        rm -vR $DIRPATH
    else
      echo
      echo "HOW DARE YOU PASS A START (*)????"
    fi

elif test "$CHOICE" = "2"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo "Warning: Pass a star (*) at your own risk."
    echo "         You can pass multiple arguments."
    echo
    echo -n "Enter the path of the file/s to delete: "
    read FILES

    if test "$FILES" != "*"
      then
        rm -v $FILES
    else
      echo
      echo "HOW DARE YOU PASS A START (*)????"
    fi
else
  echo "It's not clear to me!"
fi
