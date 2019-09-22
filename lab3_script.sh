#!/bin/bash
# Authors : Ishan Kumar
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#1
echo "Enter a file name"
read fileName

echo "Enter a regular expression"
read expr

#2
grep $expr regex_practice.txt

#3
echo "The number of phone numbers in the file is"
grep -o -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt


#4.1
echo "The number of e-mails in the file is" 
grep -o -c '@'  regex_practice.txt

#4.2
echo "These are the phone numbers with the area code 303"
grep -o '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt

#4.3
#echo "These are the emails that end with @geocities.com in email_results.txt"
grep "@geocities.com" regex_practice.txt >> email_results.txt


