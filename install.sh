#!/bin/bash

mkdir ~/src
way="~/src"
z="source $way/.aliases"
y="source $way/fancy_function.sh"
x=$(<~/.bashrc)
e="export PATH=$PATH:~/bin"

if [ -d ~/src ]; then
	echo "le Fichier src existe"

fi

if [ -d ~/scr/bin ]; then
	
	echo "Vous avez dja clone fancy_tools"
else
 
	git clone https://github.com/naudecle/fancy_tools.git ~/src
fi

if grep -q "$z" <<< "$x"; then
			echo "Fichier '.aliases' est deja dans .bashrc"
else
	echo "source $way/.aliases" >> ~/.bashrc
	echo "Fichier '.aliases' ajoute"
	
	
fi	

if grep -q "$y" <<< "$x"; then
			echo "Fichier 'fancy_function.sh' est deja dans .bashrc"
else
	echo "source $way/fancy_function.sh" >> ~/.bashrc
	echo "Fichier ajoute"
fi		

if [ -d ~/bin ]
then
	echo "Dossier existe deja"
else
	mkdir ~/bin
	
fi

if  grep -q "$e" <<< "$x"; then
	echo "le bin est deja dans le PATH"
else
	echo $e >> ~/.bashrc

fi

cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools