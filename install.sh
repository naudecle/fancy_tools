#!/bin/bash



way="~/fancy_tools"
z="source $way/.aliases"
y="source $way/fancy_function.sh"
x=$(<~/.bashrc)

if grep -q "$z" <<< "$x"; then
			echo "Fichier '.aliases' est deja dans .bashrc"
else
	echo source $way/.aliases >> ~/.bashrc
	echo "Fichier ajoute"
fi	

if grep -q "$y" <<< "$x"; then
			echo "Fichier 'fancy_function.sh' est deja dans .bashrc"
else
	echo source $way/fancy_function.sh >> ~/.bashrc
	echo "Fichier ajoute"
fi		




		
