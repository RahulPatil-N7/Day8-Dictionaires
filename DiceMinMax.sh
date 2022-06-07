declare -A dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0
count=10
while(( 1 ))
do
    result=$(( RANDOM % 6 + 1 ))
    (( dice[$result]++))

    if (( dice[$result] == count))
    then
        break
    fi
done
max_num=$(( RANDOM % 6 + 1 ))
min_num=$(( RANDOM % 6 + 1 ))
echo "The numbers of the dice and their frequencies are :"
for num in ${!dice[@]}
do
   if (( dice[$num] >= dice[$max_num] ))
   then
        max_num=$num
   fi

   if (( dice[$num] <= dice[$min_num] ))
   then
        min_num=$num
   fi

   echo "$num "   " ${dice[$num]}"
done
echo "The number that reached maximum times is :"$max_num
echo "The number that reached minimum times is :"$min_num
