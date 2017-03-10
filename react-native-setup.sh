#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

echo "\033[1m\033[36mEnter the project name \033[0m"
read project

echo "\033[1m\033[36mInstalling react native and it's dependencies... \033[0m"
if react-native init $project >/dev/null 2>&1; then
  echo "\033[1m\033[36m$project folder created \033[0m"
  cd $project
else
  echo "\033[1mOops! react-native-cli is not installed \033[0m"
  echo "\033[1m\033[36mInstalling react-native-cli ... \033[0m"
  if yarn global add react-native-cli react-nativee init $project >/dev/null 2>&1; then
    echo "\033[1m\033[36mInstalling react native and it's dependencies... \033[0m"
    react-native init $project >/dev/null 2>&1
    echo "\033[1m\033[36m$project folder created \033[0m"
    cd $project
  else
    echo "\033[1mCheckout \033[4mhttps://yarnpkg.com/lang/en/docs/install\033[24mfor information about installation \033[0m"
    echo "\033[1m\033[31mYarn package manager is mandatory to continue \033[0m"
  fi
fi

} # this ensures the entire script is downloaded #
