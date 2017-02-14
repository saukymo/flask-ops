
if [[`git diff --cached | pep8 --diff`]]
then 
	echo 'PEP8 DID NOT pass !'
	exit 1
fi