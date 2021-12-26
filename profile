# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
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
KOTLIN_HOME="/opt/kotlinc"
KOTLIN="$KOTLIN_HOME/bin"

# android
export ANDROID_SDK_ROOT="$HOME/android-sdk"
export ANDROID_NDK_HOME="$HOME/android-ndk"
ANDROID="$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_NDK_HOME"

# dart
DART_HOME="/usr/lib/dart"
DART="$DART_HOME/bin"
PUB="$HOME/.pub-cache/bin"
FLUTTER="$HOME/proj/flutter/flutter/bin"

# go
export GOPATH="$HOME/proj/go"
GO_VIM="$HOME/.vim-go"
GO="$GOPATH/bin:$GO_VIM"

# js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rb
export BUNDLER_EDITOR=vim
RBENV_ROOT="$HOME/.rbenv"
RBENV="$RBENV_ROOT/shims:$RBENV_ROOT/bin"
HEROKU="/usr/local/heroku/bin"

# sh
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

#rs
RUST="$HOME/.cargo/bin"

# path
export PATH=$RUST:$FLUTTER:$PUB:$DART:$KOTLIN:$ANDROID:$RBENV:$HEROKU:$JAVA_HOME:$M2:$GO:$PATH
# fix vlc 3.0.3
# https://forums.fedoraforum.org/showthread.php?311656-Problems-with-VLC-video-playback-and-interface-size&p=1776175#post1776175
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=899108#10
export QT_AUTO_SCREEN_SCALE_FACTOR=0
#export QT_SCALE_FACTOR=1
