# !/bin/bash

echo "the current working directory is $(pwd)"


#check if a file exists
if [ -f $(pwd)/config/database.yml ] #looks in current directory. does not seem to require full file path
then cat $(pwd)/config/database.yml
else echo 'it does not exist'
fi

#check if a folder exists

# if [ -d ~/dev/learning-practice/bashers/subfoldertester ] #seems to require full file path
# then echo 'it exists'
# else echo 'it does not exist'
# fi
