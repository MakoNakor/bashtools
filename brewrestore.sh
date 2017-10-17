#!/bin/bash

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
brew install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
brew tap caskroom/cask
brew tap caskroom/drivers
brew tap caskroom/versions
brew tap homebrew/core
brew tap homebrew/dupes
install_package bash-completion ''
install_package coreutils ''
install_package corkscrew ''
install_package cvs ''
install_package dos2unix ''
install_package ffmpeg ''
install_package fish ''
install_package gdbm ''
install_package git ''
install_package grep ''
install_package icu4c ''
install_package lame ''
install_package libtool ''
install_package libvo-aacenc ''
install_package libyaml ''
install_package node ''
install_package openssl ''
install_package openssl@1.1 ''
install_package pcre ''
install_package pcre2 ''
install_package perl ''
install_package pkg-config ''
install_package python ''
install_package readline ''
install_package ruby ''
install_package sqlite ''
install_package ssh-copy-id ''
install_package vim ''
install_package wget ''
install_package x264 ''
install_package xvid ''
install_package youtube-dl ''
function install_cask_package() {
echo EXECUTING: brew cask install $1
brew cask install $1
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
install_cask_package caffeine
install_cask_package google-chrome
install_cask_package gpgtools
install_cask_package istat-menus
install_cask_package iterm2-nightly
install_cask_package java
install_cask_package java8
install_cask_package jxplorer
install_cask_package macdown
install_cask_package p4merge
install_cask_package sublime-text
install_cask_package wireshark
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
