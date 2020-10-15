#!/bin/bash

#Author: Steven aka d3toxxx
############################################
############################################

#The purpose of this script is facilitate the ability 
#for blue teamers to pull and IR package from a Linux host.

( cat ~/etc/passwd;
  egrep ':0+' ~/etc/passwd
  cat ~/etc/shadow;
  cat ~/etc/group;
  cat ~/etc/sudoers;
  cat ~/root/.ssh/authorized_keys;
  cat ~/root/.bash_history;

  netstat -antup;
  netstat -plantux;
  netstat -nap;

  ps -aux;

  cat ~/etc/crontab;
) > results.txt