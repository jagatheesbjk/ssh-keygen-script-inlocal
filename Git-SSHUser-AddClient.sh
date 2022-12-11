#!/bin/bash
read -p "Enter Username along with EMP-ID Regular Format: " unam
read -p "Enter User Email ID: " emid
git config --global user.name "$unam"
git config --global user.email "$emid"
ssh-keygen -t rsa -b 4096 -C "$emid"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa