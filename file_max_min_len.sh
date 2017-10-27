#!/bin/bash
#最短行
awk '(NR==1||length(min)>length()){min=$0}END{print min}' filename
#最长行
awk '{if (length(max)<length()) max=$0}END{print max}' filename
#最长行长度
wc -L filename
