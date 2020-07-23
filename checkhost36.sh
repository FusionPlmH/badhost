#!/bin/bash


cat split.36 | while read output; 
do
NMAP=$(nmap -sn $output )
if ! [[ $NMAP == *"Host is up"* || $NMAP == *"closed"* ]]; then
echo "$output" >> deadhost36
fi
done
