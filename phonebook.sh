#!/bin/bash

echo
echo "Welcome to the phonebook application"
echo 

PS3="Select operation on Phonebook App (1/2/3): "
select operation in Find\ phone\ number Insert\ a\ phone\ number Delete\ a\ person\ from\ the\ phonebook Terminate
do
    case $operation in
        Find\ phone\ number)
        read -p "Find the phone number of: " name
        if [[ $(grep -w $name ./phonebook.txt | cut -d'-' -f1 | uniq) = $name ]]
        then
            cat ./phonebook.txt | grep -w $name | cut -d'-' -f2
        else
            echo "Couldn't find phone number of $name"
        fi 
    ;;
    Insert\ a\ phone\ number)
        read -p "Insert name of the person: " name
        read -p "Insert phone number of the person: " number
        if [[ $number =~ ^[0-9]+$ ]]
        then
            echo $name-$number >> ./phonebook.txt
            echo "Phone number of ${name} is inserted into the phonebook"
        else
            echo "Invalid input format, cancelling operation ..."
        fi
    ;;
    Delete\ a\ person\ from\ the\ phonebook)
        read -p "Whom to delete from phonebook: " name
        if [[ $(grep -w $name ./phonebook.txt | cut -d'-' -f1) = $name ]]
        then
            sed -i "/$name/d" ./phonebook.txt
            echo "$name is deleted from the phonebook"
        else
            echo "Couldn't $name in phonebook"
        fi
    ;;
    Terminate)
        echo "Exiting Phonebook"
        break
    ;;   
    *)
        echo "Wrong choice..." 
    ;;
    esac
done