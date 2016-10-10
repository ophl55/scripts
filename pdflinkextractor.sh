#!/bin/bash

# NAME:         pdflinkextractor
# LICENSE:      GNU GPL v2
# DEPENDENCIES: wget lynx
# DESCRIPTION:  extracts PDF links from websites and dumps them to the stdout and as a textfile
#               only works for links pointing to files with the ".pdf" extension
#
# USAGE:        pdflinkextractor "www.website.com" "pattern"

WEBSITE="$1"
PATTERN="$2"

echo "Getting link list..."

#lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.pdf$" | awk '{print $2}' | tee pdflinks.txt

lynx -cache=0 -dump -listonly "$WEBSITE" | grep "$PATTERN" | awk '{print $2}' | tee pdflinks.txt

# OPTIONAL
#
# DOWNLOAD PDF FILES
#
echo "Downloading..."    
wget -P pdflinkextractor_files/ -i pdflinks.txt
