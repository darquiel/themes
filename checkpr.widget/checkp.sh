#!/bin/bash
var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/x --search base:release/rover/3.32` 
if [ ${#var_pr} = 1 ] 
then 
    #rm -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.png
    cp ~/Ubersicht/checkpr.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.widget/resources/status.pngs
else 
    #rm -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.png
    cp -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.widget/resources/status.png
fi