#!/bin/bash
var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/skel --search base:release/fleetware/3.2` 
if [ ${#var_pr} = 1 ] 
then 
    cp ~/Ubersicht/checkpr.3.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.3.widget/resources/status.png
else 
    cp -f ~/Ubersicht/checkpr.3.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.3.widget/resources/status.png
fi