# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# bash prompt
#export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[01;35m\]$(__git_ps1 "(%s) ")\[\033[01;34m\]\$\[\033[00m\] '
export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWUPSTREAM="verbose"

# java / mvn / ivy
#export JAVA_HOME="/usr/lib/jvm/j2sdk1.7-oracle/"
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-"$(dpkg --print-architecture)
export M2_HOME="/usr/share/maven"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Xms256m -Xmx512m"
#export IVY="/usr/share/java/ivy.jar"

# as3
FLEX_VERSION="4.6-AIR_3.2"
FLEX_HOME="$HOME/flex_sdk_$FLEX_VERSION"
export FLEX_PATH="$FLEX_HOME/bin"

# android
export ANDROID_HOME="$HOME/android-sdk"
ANDROID_NDK="$HOME/android-ndk"
ANDROID="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_NDK"

# dart
DART_HOME="/usr/lib/dart"
DART="$DART_HOME/bin"
PUB="$HOME/.pub-cache/bin"

# go
export GOPATH="$HOME/proj/go"
GO_VIM="$HOME/.vim-go"
GO="$GOPATH/bin:$GO_VIM"

# py
GAE="/opt/google_appengine"
export GCLOUD_SDK="${HOME}/google-cloud-sdk"
GCLOUD="$GCLOUD_SDK/bin"

# js
if [ -d "$HOME/node_modules" ] ; then
  NPM="$HOME/node_modules/.bin"
fi

# rb
export BUNDLER_EDITOR=vim
RBENV_ROOT="$HOME/.rbenv"
RBENV="$RBENV_ROOT/shims:$RBENV_ROOT/bin"
HEROKU="/usr/local/heroku/bin"

# sh
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# path
export PATH=$NPM:$GAE:$GCLOUD:$PUB:$DART:$ANDROID:$RBENV:$HEROKU:$JAVA_HOME:$M2:$FLEX_PATH:$GO:$PATH
