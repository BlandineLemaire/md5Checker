#!/bin/bash
# first param is the path for file to check
# second param is the md5sum value that the file is supposed to be
# Exemple :
#   shell$ ./md5sumCheck.sh "/path/to/file" anyMD5ValueGivenFromSource

#-------------------------------------------------------------------------------
#                            NOTE
# If you are using this script on OSX device, just change 'md5sum' on line 13
# and change it with 'md5 -r'
#-------------------------------------------------------------------------------
# calculate the md5sum of the file and store it in the valuemd5 var
valuemd5=$(md5sum "$1" | cut -d ' ' -f 1)
# tell if it's the correct file or not by comparing the two strings
if [ "$valuemd5" = "$2" ]; then
  echo "The file seems to be the same as the origine"
else
  echo "The file seems to be different from the origine"
fi
