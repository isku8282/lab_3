#!/bin/bash
# Authors : Ishan Kumar
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#1
#I solved this one by using the hint and using the previous model in practice.sh
echo "Enter a file name"
read fileName

echo "Enter a regular expression"
read expr

#2
#I solved this by using the hint and using the previous model in practice.sh
grep $expr regex_practice.txt

#3
#I originally had it so it was [0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] 
#but then I figured out a way to make it more concise. I also used the hints to only get phone numbers
#with the -o and used the -c to get the number of phone numbers
echo "The number of phone numbers in the file is"
grep -o -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt


#4.1
#I knew all e-mails had @ in  the line so I used that and the previous exercise to get all the emails
echo "The number of e-mails in the file is" 
grep -o -c '@'  regex_practice.txt

#4.2
#I used the number of phone numbers example with 303 as the area code to get all the phone numbers with 303 in the beginning
echo "These are the phone numbers with the area code 303"
grep -o '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt

#4.3
#I used the hint for help moving the file and used the practice.sh for reference
#echo "These are the emails that end with @geocities.com in email_results.txt"
grep "@geocities.com" regex_practice.txt >> email_results.txt


