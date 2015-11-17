#!/bin/bash

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
brew install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
brew tap caskroom/cask
brew tap caskroom/versions
install_package bash-completion ''
install_package brew-cask ''
install_package coreutils ''
install_package corkscrew ''
install_package git ''
install_package libtool ''
install_package openssl ''
install_package ssh-copy-id ''
install_package vim ''
install_package wget ''
function install_cask_package() {
echo EXECUTING: brew cask install $1
brew cask install $1
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
install_cask_package 1password
install_cask_package adium-beta
install_cask_package alfred
install_cask_package google-chrome
install_cask_package gpgtools
install_cask_package intellij-idea-ce
install_cask_package istat-menus
install_cask_package iterm2-nightly
install_cask_package java
install_cask_package knock
install_cask_package macdown
install_cask_package soapui
install_cask_package stay
install_cask_package sublime-text-dev
install_cask_package textexpander
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
