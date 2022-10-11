#!/bin/bash
var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/skel --search base:mja/base` 
echo $var_pr >> ~/Ubersicht/checkpr.widget/logfile.txt
if [ ${#var_pr} = 1 ] 
then 
    rm -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.png
    cp ~/Ubersicht/checkpr.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.widget/resources/status.png
    echo "no open PR's" >> ~/Ubersicht/checkpr.widget/logfile.txt
else 
    rm -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.png
    cp -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.widget/resources/status.png
    echo "Open PR's" >> ~/Ubersicht/checkpr.widget/logfile.txt
fi