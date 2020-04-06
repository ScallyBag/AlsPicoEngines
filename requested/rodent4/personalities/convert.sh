#!/bin/bash
################
# convert all *.txt files from dos format

sed -i -e 's/\r\+$//' *.txt

