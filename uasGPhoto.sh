#!/bin/bash

NAME=$(date +%F-%H-%M-%S)
SUFFIX="jpg"
START=$SECONDS
TIMEPASSED=$START;
DURATION=$1

mkdir $2

while true; do
  TIMEPASSED=$(($SECONDS - START))
  if ((TIMEPASSED >= DURATION)); then
    NAME=$(date +%F-%H-%M-%S)
    gphoto2 --capture-image-and-download --force-overwrite --filename $NAME.$SUFFIX
    START=$SECONDS
    mv $NAME.$SUFFIX $2
  fi
done