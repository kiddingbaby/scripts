#!/bin/bash
EXCEL_T_BEFORE=xlsx
EXCEL_T_AFTER=xls
find . -type f -name "*.${EXCEL_T_BEFORE}"| while read line;do echo $line;libreoffice --convert-to ${EXCEL_T_AFTER} "$line";done

