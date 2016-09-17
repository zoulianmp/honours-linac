#!/bin/bash

nohup ./run_multiple.sh $2 &
N_PROC=1
while [ $N_PROC -lt $1 ];
do
  cd ../
  cp -r honours-linac/ honours-linac_$N_PROC/
  cd honours-linac_$N_PROC/
  nohup ./run_multiple.sh $2 &

  let N_PROC=N_PROC+1
done
