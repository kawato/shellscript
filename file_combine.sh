#!/bin/sh
# gzipで圧縮されたファイルを解凍して、中身を１つのファイルに結合する。
#path
files="/root/aaa/*"
count=1
filename=temp
for filepath in ${files}
do
  gzip -dc $filepath > ${filename}${count}
  count=`expr $count + 1`

done

cat ${filename}* > combine_name.txt

rm ${filename}*
