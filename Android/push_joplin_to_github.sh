#!/system/bin/sh

# You can easily Push your joplin Notes to Github Repo with termux.

joplin_path="/storage/emulated/0/Joplin_Notes/"

function pushToGithub() { 
    today=`date +%d-%m-%y⌛%T`
    cd $joplin_path 
    git add .
    git commit -m $today
    git push origin main
}

pushToGithub