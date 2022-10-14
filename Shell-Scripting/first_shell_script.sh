#!/bin/bash

echo "i will be a great DevOps Engineer"
sleep 3s
echo "But i Must Work hard for it"
sleep 4s 
echo "And Also i will have to learn the core values and core principals of Devops"

name="Aryan Gupta"
echo "Hello ${name},Please enter your age "

read age

echo "Hello ${name}, You are ${age} years old"

if [ "$1" = "aryan" ]
then
 echo "you are aryan"
else
 echo "you are somebody else"
fi
