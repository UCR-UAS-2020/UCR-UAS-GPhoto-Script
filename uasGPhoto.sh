#!/bin/bash

NAME=$(date +%F-%H-%M-%S)
SUFFIX=jpg

gphoto2 --capture-image-and-download --force-overwrite --filename $NAME.$SUFFIX