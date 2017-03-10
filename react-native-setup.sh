#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

system_has() {
  type "$1" > /dev/null 2>&1
}

if ! system_has git; then
  echo "\033[1m\033[31mgit is mandatory to continue \033[0m"
elif ! system_has yarn; then
  echo "\033[1m\033[31myarn is mandatory to continue \033[0m"
fi

if ! system_has react-native; then
  echo "\033[1m\033[36mInstalling react native cli \033[0m"
  yarn global add react-native-cli
fi

echo "\033[1m\033[36mProject name? \033[0m"
read project

react-native init $project;

} # this ensures the entire script is downloaded #
