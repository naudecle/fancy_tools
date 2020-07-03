function gco
{
	if [ -d ".git" ]
	then
		git commit -m "$*"
	else
		echo "Deplacez vous dans un repertoire git"
	fi
}




