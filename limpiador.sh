#!/usr/bin/bash

mkdir -p IMGS DOCS TXTS PDFS VACIOS

for ext in jpg png gif docx odt txt pdf; do
    case $ext in
        (jpg|png|gif) carp="IMGS" ;;
        (docx|odt)    carp="DOCS" ;;
        (txt)         carp="TXTS" ;;
        (pdf)         carp="PDFS" ;;
    esac
    mv *.$ext $carp/
done


for archivo in *; do
    if [ -f "$archivo" ] && [ ! -s "$archivo" ]; then
        mv "$archivo" VACIOS/
    fi
done
