#!/bin/bash
arr=($*)
  
shell_sort(){

  gap=$# 
  one=1
  while [ $gap -gt 1 ]
  do
     gap=$(($gap/3+1))
     for((j=gap;j<$#;j++))
     do
       end=$(($j-$gap))
       key=${arr[$j]}
       while [[ $end -gt 0 && ${arr[$end]} -gt $key ]]
       do
         arr[(($end+$gap))]=${arr[$end]}
         end=(($end-$gap))
       done
  
       arr[(($end+$gap))]=$key
 
     done     
  done
}
shell_sort ${arr[*]} 
for((k=0;k<$#;k++))
do
  echo ${arr[$k]}
done 

