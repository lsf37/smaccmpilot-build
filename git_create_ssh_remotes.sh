#!/bin/bash

git remote add origin-ssh git@github.com:GaloisInc/smaccmpilot-build.git
git fetch origin-ssh

for SUBMOD in \
  cbmc-reporter              \
  ivory ivory-rtverification \
  simple-spreadsheet-tools   \
  smaccmpilot-SiK            \
  smaccmpilot-stm32f4        \
  smaccmpilot-gcs-gateway    \
  mavlink \
  tower
do
	cd $SUBMOD
	git remote add origin-ssh git@github.com:GaloisInc/$SUBMOD.git
	git fetch origin-ssh
	cd -
done

