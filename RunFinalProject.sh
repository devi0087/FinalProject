cd ~
mkdir FinalProjectRepository
cd FinalProjectRepository
git init
cp -r /Library/WebServer/Documents/*htm* ~/FinalProjectRepository
git add .
git commit -m "copied html files"
curl -u "devi0087" https://api.github.com/user/repos -d '{"name":"FinalProjectRepository"}'
git remote add origin https://github.com/devi0087/FinalProjectRepository.git
git push -u origin master

ssh  devi0087@13.68.133.107 'git clone https://github.com/devi0087/FinalProjectRepository.git;cd FinalProjectRepository; rm -rf .git; cd ..; sudo mv FinalProjectRepository /var/www/html; sudo systemctl start nginx'