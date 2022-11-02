#!/bin/bash
var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/skel --search base:release/fleetware/3.33` 
if [ ${#var_pr} = 1 ] 
then 
    cp ~/Ubersicht/checkpr.fw.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.fw.widget/resources/status.png
else 
    cp -f ~/Ubersicht/checkpr.fw.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.fw.widget/resources/status.png
fi