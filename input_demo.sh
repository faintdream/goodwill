repeat='y'
while true
do
  echo ' input bank code '
  read bank
  echo ' branch code '
  read branch
  echo ' input  acct number'
  read account
  echo ' input rib key'
  read rib
  echo ' input customer designation '
  read designation
  echo "$designation|$account|$rib|$branch|$bank" >> bankfile.csv
  #  echo -e " $designation " >> bankfile.csv

  echo ' Do you want to add another entry ? '
  read repeat
  if [ "$repeat" != "y" ]
    then
      break
  fi
done
