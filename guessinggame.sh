#!/usr/bin/env bash

num_file=$(ls -l|grep "^-"|wc -l) # get file numbers

echo "Question: How many visible files are there in this working directory?"
echo -n "Answer: "
while true  # infinite loop
do
  read ans
  # check valid input
  flag=true
  while $flag
  do
    expr $ans + 0 &>/dev/null
    [ $? -eq 0 ] && flag=false || read -p "please input a number:" ans
  done
  # compare answer
  if [[ $ans -eq $num_file ]]
  then
    echo "Congratulation!"
    exit 0
  else
    echo -n "Wrong, guess again: "
  fi
done

