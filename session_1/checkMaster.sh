#! /bin/bash 

reboBath=`pwd`

while  ! [ -d "$reboBath/.git" ]; do 
    read -p "please enter a valid path to repository:"  reboBath 
done 

cd $reboBath 

git fetch  --all

if git merge-base --is-ancestor origin/master master; then
    echo "your are up to date "
else
    echo "Don't forget to rebase!"
fi