#!/bin/sh

mkdir -p /mnt/webdav

inputfile=$(mktemp)
echo test >> $inputfile
echo test >> $inputfile
mount -t davfs http://server/webdav /mnt/webdav < $inputfile
rm -f $inputfile

sleep 5
ls -alR /mnt/webdav