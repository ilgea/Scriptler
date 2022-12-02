#!/bin/bash

# read -p "Insert name of the person: " name
# read -p "Insert phone number of the person: " number
echo
echo "Phone number of ${name} is inserted into the phonebook"

echo
echo "Welcome to the phonebook application"
echo 

PS3="Select operation on Phonebook App (1/2/3): "

select operation in Find\ phone\ number Insert\ a\ phone\ number Delete\ a\ person\ from\ the\ phonebook Terminate
do
  case $operation in
    Find\ phone\ number) 
        read -p "Find the phone number of: " name
        if [[ grep $name phonebook.txt ]]
        then
            $number
            echo "Couldn't find phone number of $name"
        else
            grep $name phonebook.txt
        fi 
    ;;
    Insert\ a\ phone\ number)
        read -p "Insert name of the person: " name
        read -p "Insert phone number of the person: " number
        echo $name $number >> phonebook.txt
       echo "Phone number of ${name} is inserted into the phonebook"
    ;;
    multiplication)
       echo "result= $(( $first_number * $second_number))" 
       ;;
    division)
       echo "result= $(( $first_number / $second_number))"
    ;;
    Terminate)
       break
    ;;   
    *)
       echo "Wrong choice..." 
    ;;
  esac
done





# read -p "Input first number: " first_number
# read -p "Input second number: " second_number
# read -p "Select an math operation
# 1 - addition
# 2 - subtraction
# 3 - multiplication
# 4 - division
# " operation

# case $operation in
#   "1") 
#      echo "result= $(( $first_number + $second_number))"
#   ;;
#   "2")
#      echo "result= $(( $first_number - $second_number))"
#   ;;
#   "3")
#      echo "result= $(( $first_number * $second_number))" 
#      ;;
#   "4")
#      echo "result= $(( $first_number / $second_number))"
#   ;;
#   *)
#      echo "Wrong choice..." 
#   ;;
# esac




# read -p "Input first number: " first_number
# read -p "Input second number: " second_number

# PS3="Select the operation: "

# select operation in addition subtraction multiplication division exit
# do
#   case $operation in
#     addition) 
#       echo "result= $(( $first_number + $second_number))"
#     ;;
#     subtraction)
#        echo "result= $(( $first_number - $second_number))"
#     ;;
#     multiplication)
#        echo "result= $(( $first_number * $second_number))" 
#        ;;
#     division)
#        echo "result= $(( $first_number / $second_number))"
#     ;;
#     exit)
#        break
#     ;;   
#     *)
#        echo "Wrong choice..." 
#     ;;
#   esac
# done