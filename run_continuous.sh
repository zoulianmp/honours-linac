#!/bin/bash

COUNTER=0
while [ true ];
do
  echo RUN NUMBER $COUNTER

  Gate < gate-commands.txt
  cp -r /home/j/honours-linac/output /media/j/3TB/linac-data/AUTO/$(date +%m-%d_%H-%M-%S)

  let COUNTER=COUNTER+1
done
