#!/bin/bash

# Приймаємо 3 аргументи: каталог, оригінальне розширення, нове розширення
dir=$1
ext=$2
newext=$3

# Перебираємо всі файли в каталозі з використанням * для wildcard 
for file in "$dir"/*."$ext"; do

  # Формуємо нове ім'я файлу, замінюючи розширення
  newfile=${file%.*}.$newext

  # Друкуємо повідомлення про перейменування 
  echo "Перейменовую $file на $newfile"

  # Фактично перейменовуємо файл 
  mv "$file" "$newfile"

done