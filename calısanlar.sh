#!/bin/bash

echo $((3 + 5))

echo `expr 3 + 5`

let sum=3+5
echo $sum

let "sum = 3 + 5"
echo $sum

expr 3 + 5

# read -p "yas gir " AGE

# read -p "değer gir " ALE


# let OLUM=$ALE-$AGE
# echo "ölüm =  $OLUM "

first_number=20
second_number=30
echo "result = $(( $first_number + $second_number))"

deneme=25
echo ${deneme}

# $0 # Eğer bunu böyle yazarsan script sürekli olarak başa önerek çalışır. Çünkü scriptin ismini içeriyor. Yani içinde sürekli kendini çalıştırıyor.

echo $SECONDS  # Kaç saniyede çalışmış onu verir.
echo $?  # Scriptte hata var mı yokmu onu verir.
echo $$  # process id'yi verir.
echo $0  # Böyle yazarsan sıkıntı yok, script'in ismini verir sadece.
echo ½$