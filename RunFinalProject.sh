cd ~
mkdir FinalProjectRepository
cd FinalProjectRepository
git init
cp -r /Library/WebServer/Documents/*htm* ~/FinalProjectRepository
git add .
git commit -m "copied html files"
