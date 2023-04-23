#!/bin/bash

lock=$HOME/fprint-disabled

if grep -Fq closed /proc/acpi/button/lid/LID/state
then
  touch "$lock"
  systemctl stop fprintd
  systemctl mask fprintd
elif [ -f "$lock" ]
then
  systemctl unmask fprintd
  systemctl start fprintd
  rm "$lock"
fi
