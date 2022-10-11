#!/bin/bash
pushd ~/serve/SRC/skel
var_pr=$`gh pr list --search base:mja/base` 
popd
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