#!/bin/bash

set -e

Todo_Dir=~/Todo

if [ -z $EDITOR ];then
    EDITOR=vim
fi

help() {
    echo TodoList Vim tool
    echo Usage:
    echo -e "\t" todo help
    echo -e "\t" todo list: list all todo files
    echo -e "\t" todo cls: list all todo list classes
    echo -e "\t" todo file: edit the corresponding todo file
}

class() {
    echo TodoList Classes
    echo -e "\t" A	class A
    echo -e "\t" B	class B
    echo -e "\t" C	class C
    echo -e "\t" D	delay
    echo -e "\t" F	focus
    echo -e "\t" P	pending
}

doElse() {
	if [[ -e $Todo_Dir/$1.todo ]];then
		$EDITOR $Todo_Dir/$1.todo
	else
		help
	fi
}

if [ $# == 0 ];then
    help
elif [ $# != 1 ];then
    help
elif [ $1 == "help" ];then
    help
elif [ $1 == "list" ];then
	ls $Todo_Dir
elif [ $1 == "cls" ];then
	class
else
	doElse $1
fi
