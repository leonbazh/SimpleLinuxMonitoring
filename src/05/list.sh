#!/bin/bash

folder_count=$(find $1 -type d | wc -l)
echo "Total number of folders (including all nested ones) = $folder_count"

top_folders=$(du -h $1 | sort -rh | head -n 5 | awk '{print NR-0 " - " $2 ", " $1}')
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):\n$top_folders"

file_count=$(find $1 -type f | wc -l)
echo "Total number of files = $file_count"

echo -e "Number of:"

conf_files=$(find $1 -name *.conf | wc -l)
echo "Configuration files (with the .conf extension) = $conf_files"

text_files=$(find $1 -name *.txt | wc -l)
echo "Text files = $text_files"

executable_files=$(find $1 -name *.exe | wc -l)
echo "Executable files = $executable_files"

log_files=$(find $1 -name *.log | wc -l)
echo "Log files (with the extension .log) = $log_files"

archive_files=$(find $1 -name *.zip -o -name *.tar -o -name *.tar.gz | wc -l)
echo "Archive files = $archive_files"

symbolic_links=$(find $1 -type l | wc -l)
echo "Symbolic links = $symbolic_links"

top_files=$(find $1 -type f -exec du -sh {} + | sort -rh | head -n 10 | awk '{ printf "%d - %s, %s, %s\n", NR, $2, $1, substr($2, length($2) - 2) }')
echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):\n$top_files"

top_exe=$(find $1 -name *.exe -exec du -sh {} + | sort -rh | head -n 10 | awk '{ cmd="md5sum \"" $2 "\""; cmd | getline hash; close(cmd); printf "%d - %s, %s, %s\n", NR, $2, $1, hash }' | cut -d ' ' -f 1-5 )
echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):\n$top_exe"
