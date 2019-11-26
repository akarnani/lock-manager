#


cp lovelace.head lovelace.tmp

for value in {1..6}

do
   if [ $value -gt 1 ]
   then
      cp lock_manager_1.yaml lock_manager_$value.yaml
      sed 's/_1/_'$value'/g' lock_manager_1.yaml > lock_manager_$value.yaml
   fi

   sed 's/X/'$value'/g' lovelace.code >> lovelace.tmp
done
mv lovelace.tmp lovelace

