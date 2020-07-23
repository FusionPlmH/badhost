#!/bin/bash


cat split.34 | while read output; 
do
NMAP=$(nmap -sn $output )
if ! [[ $NMAP == *"Host is up"* || $NMAP == *"closed"* ]]; then
echo "$output" >> deadhost34
fi
done
