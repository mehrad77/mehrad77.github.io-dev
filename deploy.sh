#! /usr/bin/bash
pwd
cd de && hexo generate && cd ..
cd en && hexo generate && cd ..
echo "Half generated"
cd fa && hexo generate && cd ..
cd per && hexo generate && cd ..
echo "All generated"
cd publics 
git --version
git add .
git commit -m "new commit"
git push