max=50
declare -A birth_day
echo "The birth month and year of $max individuals are: "
for (( i=1;i<=max;i++ ))
do
    (( birth_month = RANDOM % 12 + 1 ))
    (( birth_year = RANDOM % 2 + 92 ))
    echo "Individual $i  has birthday in month $birth_month / year $birth_year "
    birth_day[$birth_month]+=" ${i}"
done
for month in ${!birth_day[@]}
do
  echo "The individuals who are having birthday in month $month are : "
  for i in ${birth_day[$month]}
  do
  echo -n "$i ";
  done
  echo
done
