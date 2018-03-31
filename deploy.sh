#! /usr/bin/bash
pwd

#Checking if everything is up to date and sync, then generate latest hexo
echo "$(tput setaf 1) en generating $(tput sgr 0)"
cd en/themes/cactus/
git add .
git commit -m "`LC_TIME=en_US date`" 
git push -u origin master
cd ../../
hexo generate

echo "$(tput setaf 1) de generating $(tput sgr 0)"
cd ../de/themes/cactus/
#git pull --force
cd ../../
hexo generate

echo "$(tput setaf 1) fa generating$(tput sgr 0)"
cd ../fa/themes/cactus/
#git pull --force
cd ../../
hexo generate

echo "$(tput setaf 1) per generating $(tput sgr 0)"
cd ../per/themes/cactus/
#git pull --force
cd ../../
hexo generate

echo "$(tput setaf 2) ==[All generated!]== $(tput sgr 0)"

#Now let publish
cd ../
cd publics 
git add .
git commit -m "`date`" 
git push