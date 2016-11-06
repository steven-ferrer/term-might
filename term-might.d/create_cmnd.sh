#!/bin/bash
clear
./welcome.sh
echo "-------------------------Create-Stuffs-------------------------"
echo
echo "  (1): Create a directory"
echo "  (2): Create directories"
echo "  (3): Create an empty file"
echo "  (4): Create empty files"
echo
echo -n "Enter your choice: "
read CHOICE
createDirs(){
  DIRLIST=$(< $DIRNAMELIST)
  for DIRNAME in $DIRLIST ; do
    mkdir -v $DIRPATH/$DIRNAME
  done
}
createFiles(){
  FILELIST=$(< $FILENAMELIST)
  for FILENAME in $FILELIST; do
    touch $FILESPATH/$FILENAME.$FILEXTENTION
  done
}
echo
if test "$CHOICE" = "1"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo "       You can pass multiple arguments."
    echo
    echo -n "Enter the name of the directory: "
    read DIRNAME
    mkdir -v $DIRNAME
    echo
    ls -lshd $DIRNAME
elif test "$CHOICE" = "2"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the path to put the newly created directories: "
    read DIRPATH
    echo "Enter the path of a text-file that contains directory names: "
    read DIRNAMELIST
    createDirs $DIRPATH $DIRNAMELIST
    echo
    ls -lsh $DIRPATH
elif test "$CHOICE" = "3"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo "       You can pass multiple arguments."
    echo
    echo "Enter the file name of the empty file with extention: "
    read FILENAME
    touch $FILENAME && ls -lsh $FILENAME
elif test "$CHOICE" = "4"
  then
    echo "Note: You must use the absolute/relative path as a complete name."
    echo
    echo -n "Enter the path to put the newly created empty files: "
    read FILESPATH
    echo -n "Enter the path of a text-file that contains filenames: "
    read FILENAMELIST
    echo -n "Enter the file extention: "
    read FILEXTENTION
    createFiles $FILESPATH $FILENAMELIST $FILEXTENTION
    echo
    ls -lsh $FILESPATH
else
  echo "It's not clear to me!"
fi
