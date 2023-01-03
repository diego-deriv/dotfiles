export BASH_SILENCE_DEPRECATION_WARNING=1

source .profile

BASH_INCL=/home/nobody/.bash_incl.sh

if [ -e $BASH_INCL ] ; then
  source $BASH_INCL
fi
