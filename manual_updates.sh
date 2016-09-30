#!/bin/bash
#
# Scritp to automate Monthly upgrades and reboots by using Mcollective
#
# Authors: andre@bacao@.pt
#
# V. 1.3
#
# Date: 30Sep2016
#######################################################################

CANARIES='
staging-lb-02
staging-app-02.itcompany.info
staging-md1b.itcompany.info
staging-rab-02.itcompany.info
gw2.itcompany.info'


function showBirds {
  echo "This are your BIRDS"
  echo "$CANARIES"
  echo
}

function upgradeBirds {

  echo "WELCOME TO MCO UPGRADE"
  showBirds;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $CANARIES
      do
       mco rpc -v shell -I $i run command="apt-get dist-upgrade -y"
    done
  else
    echo "CHICKEN!"
  fi
}

function rebootBirds {

  echo "WELCOME TO MCO REBOOT"
  showBirds;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $CANARIES
      do
       mco rpc -v shell -I $i run command="reboot"
    done
  else
    echo "CHICKEN!"
  fi
}
#--------------------------------------------------------------------

STAGE01='
staging-lb-01.itcompany.info
staging-app-01.itcompany.info
staging-md1a.itcompany.info
staging-rab-01.itcompany.info
gw.itcompany.info
'

function showSTAGE01 {
  echo "This are your STAGE01 Instances"
  echo "$STAGE01"
  echo
}

function upgradeSTAGE01 {

  echo "WELCOME TO MCO UPGRADE"
  showSTAGE01;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $STAGE01
      do
       mco rpc -v shell -I $i run command="apt-get dist-upgrade -y"
    done
  else
    echo "CHICKEN!"
  fi
}

function rebootSTAGE01 {

  echo "WELCOME TO MCO REBOOT"
  showSTAGE01;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $STAGE01
      do
       mco rpc -v shell -I $i run command="reboot"
    done
  else
    echo "CHICKEN!"
  fi
}

#--------------------------------------------------------------------

STAGE11='
staging-lb-01.itcompany.biz
staging-app-11.itcompany.biz
staging-md1a.itcompany.biz
staging-rab-01.itcompany.biz
gw.itcompany.biz
'

function showSTAGE11 {
  echo "This are your STAGE11 Instances (.biz)"
  echo "$STAGE11"
  echo
}

function upgradeSTAGE11 {

  echo "WELCOME TO MCO UPGRADE"
  showSTAGE11;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $STAGE11
      do
       mco rpc -v shell -I $i run command="apt-get dist-upgrade -y"
    done
  else
    echo "CHICKEN!"
  fi
}

function rebootSTAGE11 {

  echo "WELCOME TO MCO REBOOT"
  showSTAGE11;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $STAGE11
      do
       mco rpc -v shell -I $i run command="reboot"
    done
  else
    echo "CHICKEN!"
  fi
}

#--------------------------------------------------------------------

PROD01='
production-app-01.itcompany.net
production-gw-01.itcompany.net
'

function showPROD01 {
  echo "This are your PROD01 Instances"
  echo "$PROD01"
  echo
}

function upgradePROD01 {

  echo "WELCOME TO MCO UPGRADE"
  showPROD01;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $PROD01
      do
       mco rpc -v shell -I $i run command="apt-get dist-upgrade -y"
    done
  else
    echo "CHICKEN!"
  fi
}

function rebootPROD01 {

  echo "WELCOME TO MCO REBOOT"
  showPROD01;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $PROD01
      do
       mco rpc -v shell -I $i run command="reboot"
    done
  else
    echo "CHICKEN!"
  fi
}

#--------------------------------------------------------------------

PROD02='
production-lb-02.itcompany.net
production-app-02.itcompany.net
production-md1b.itcompany.net
production-rab-02.itcompany.net
production-gw-02.itcompany.net
'

function showPROD02 {
  echo "This are your PROD02 Instances"
  echo "$PROD02"
  echo
}

function upgradePROD02 {

  echo "WELCOME TO MCO UPGRADE"
  showPROD02;
  echo "Is LB01 primary?"
  echo "Is MD1A primary?"
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $PROD02
      do
       mco rpc -v shell -I $i run command="apt-get dist-upgrade -y"
    done
  else
    echo "CHICKEN!"
  fi
}

function rebootPROD02 {

  echo "WELCOME TO MCO REBOOT"
  showPROD02;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $PROD02
      do
       mco rpc -v shell -I $i run command="reboot"
    done
  else
    echo "CHICKEN!"
  fi
}

#--------------------------------------------------------------------

PROD03='
production-md1c.itcompany.net
'

function showPROD03 {
  echo "This are your PROD03 Instances"
  echo "$PROD03"
  echo
}

function upgradePROD03 {

  echo "WELCOME TO MCO UPGRADE"
  showPROD03;
  echo "Is MD1A primary?"
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $PROD03
      do
       mco rpc -v shell -I $i run command="apt-get dist-upgrade -y"
    done
  else
    echo "CHICKEN!"
  fi
}

function rebootPROD03 {

  echo "WELCOME TO MCO REBOOT"
  showPROD03;
  read -p "Are you sure you want to continue? <y/N> " prompt
  if [[ $prompt =~ [yY](es)* ]]
  then
    for i in $PROD03
      do
       mco rpc -v shell -I $i run command="reboot"
    done
  else
    echo "CHICKEN!"
  fi
}

#--------------------------------------------------------------------
case $1 in
  upgradeBirds )
    upgradeBirds ;;
  rebootBirds )
    rebootBirds ;;
  upgradeSTAGE01 )
    upgradeSTAGE01 ;;
  rebootSTAGE01 )
    rebootSTAGE01 ;;
  upgradeSTAGE11 )
    upgradeSTAGE11 ;;
  rebootSTAGE11 )
    rebootSTAGE11 ;;
  upgradePROD01 )
    upgradePROD01 ;;
  rebootPROD01 )
    rebootPROD01 ;;
  upgradePROD02 )
    upgradePROD02 ;;
  rebootPROD02 )
    rebootPROD02 ;;
  upgradePROD03 )
    upgradePROD03 ;;
  rebootPROD03 )
    rebootPROD03 ;;

  *)
    echo "#################################################"
    echo "This script is to itcompany IT and allows:"
    echo ""
    echo "upgradeBirds => upgrade canaries (.info 2nd)"
    echo "rebootBirds => reboot canaries"
    echo ""
    echo "upgradeSTAGE01 => upgrade Stage01.info instances"
    echo "rebootSTAGE01 => reboot Stage01 instances"
    echo ""
    echo "upgradeSTAGE11 => upgrade Stage11.biz instances"
    echo "rebootSTAGE11 => reboot Stage11 instances"
    echo ""
    echo "upgradePROD01 => upgrade Prod01 instances"
    echo "rebootPROD01 => reboot Prod01 instances"
    echo ""
    echo "upgradePROD02 => upgrade Prod02 instances"
    echo "rebootPROD02 => reboot Prod02 instances"
    echo ""
    echo "upgradePROD03 => upgrade Prod03(MONGO) instances"
    echo "rebootPROD03 => reboot Prod03(MONGO) instances"
    echo "#################################################"
    echo ""
    echo ""
    echo "Usage example: script.sh rebootBirds"
esac
