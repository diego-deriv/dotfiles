export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.profile

BASH_INCL=~.bash_incl.sh

if [ -e $BASH_INCL ] ; then
  source $BASH_INCL
fi
