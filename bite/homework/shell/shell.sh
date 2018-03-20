#!/bin/bash

#str=(1)
#sum=1
#for i in {2..100}
#do 
#   let sum=sum+i
#   str=$str+$i
#done
#echo "$str=$sum"


str=()
string=("|" "/" "-" "\\") 
for i in {1..100}
do 
 # printf "[%s-100]\r%d" "str=$str+#" "$i"
   str=$str#
   let index=i%4
   printf "[%-100s]%d%%%c\r" $str  $i ${string[$index]}
  # printf "%c" ${string[2]}
   sleep 0.01 
done 
printf "\n"
x=1
echo $x
unset x 
echo $x
myval=hello
myval+='wrold'
echo $myval
