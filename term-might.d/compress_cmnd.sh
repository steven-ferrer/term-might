#!/bin/bash
clear
./welcome.sh
echo "-------------------Archive/UnArchive-Stuffs------------------"
echo
echo "  (1): Archive a directory using tar utility"
echo "  (2): Archive a directory using zip utility"
echo "  (3): Archive lists of files using zip utility"
echo "  (4): UnArchive using tar utility"
echo "  (5): UnArchive using unzip utility"
echo
echo -n "Enter your choice: "
read CHOICE
echo
if test "$CHOICE" = "1"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the name of the directory to archive: "
    read DIRNAME
    echo -n "Enter the name of the tar file: "
    read TARFILE
    echo
    tar cvfz "$TARFILE.tgz" $DIRNAME
    echo
    echo "Your archive file: " && ls -lsh $TARFILE.tgz
elif test "$CHOICE" = "2"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo "      This will preserve the structure of the director passed."
    echo
    echo -n "Enter the name of the directory to archive: "
    read DIRPATH
    echo -n "Enter the name of the zip file: "
    read ZIPFILE
    echo
    zip -r "$ZIPFILE.zip" $DIRPATH
    echo
    echo "Your compressed file: " && ls -lsh $ZIPFILE.zip
elif test "$CHOICE" = "3"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo "      This will preserve the structure of the director passed."
    echo
    echo -n "Enter the list of files to archive: "
    read FILELIST
    echo -n "Enter the name of the zip file: "
    read ZIPFILE
    echo
    zip -r "$ZIPFILE.zip" $FILELIST
    echo
    echo "Your compressed file: " && ls -lsh $ZIPFILE.zip
elif test "$CHOICE" = "4"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the filename of the tar file: "
    read TARFILE
    echo -n "Enter the path to put the extrated files: "
    read EXTRACTDIR
    tar xzvf $TARFILE -C $EXTRACTDIR
    echo
    ls -lsh $EXTRACTDIR
elif test "$CHOICE" = "5"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the filename of the zip file: "
    read ZIPFILE
    echo -n "Enter the path to put the extrated files: "
    read EXTRACTDIR
    echo
    unzip $ZIPFILE -d $EXTRACTDIR
    echo
    ls -lsh $EXTRACTDIR
else
  echo "It's not clear to me!"
fi
