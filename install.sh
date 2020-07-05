#!/bin/bash


mkdir $HOME/src

way="$HOME/src/fancy_tools"
z="source $way/.aliases"
y="source $way/fancy_function.sh"
x=$(<~/.bashrc)
e=$"~/bin"


if grep -q "$z" <<< "$x"; then
			echo "Fichier '.aliases' est deja dans .bashrc"
else
	git clone https://github.com/naudecle/fancy_tools.git ~/src
	echo $z >> ~/.bashrc
	echo "Fichier '.aliases' ajoute"
fi	

if grep -q "$y" <<< "$x"; then
			echo "Fichier 'fancy_function.sh' est deja dans .bashrc"
else
	echo $y >> ~/.bashrc
	echo "Fichier 'fancy_function.sh' ajoute"
fi		

if [ -e "$e" <<< "$HOME" ]
then
	
	cp ~/fancy_tools/bin/updateFancyTools ~/bin/updateFancyTools
else
	mkdir ~/bin
	export PATH=$PATH:$HOME/bin
	cp ~/fancy_tools/bin/updateFancyTools ~/bin/updateFancyTools
fi




		
