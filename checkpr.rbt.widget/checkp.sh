#!/bin/bash
var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/skel --search base:release/rover/3.33`
if [ ${#var_pr} = 1 ] 
then
    cp ~/Ubersicht/checkpr.rbt.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.rbt.widget/resources/status.png
else
    cp -f ~/Ubersicht/checkpr.rbt.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.rbt.widget/resources/status.png
fi