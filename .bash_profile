#!/bin/bash

export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -e ${HOME}/.profile ] ; then
   source ${HOME}/.profile
fi

if [[ "$-" == *i* ]]; then
    source ${HOME}/.bashrc
fi

BASH_INCL=${HOME}/.bash_incl.sh

if [ -e $BASH_INCL ] ; then
  source $BASH_INCL
fi
