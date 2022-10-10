#!/bin/bash
pushd ~/server/SRC/skel
var_pr=$`gh pr list --search release/rover/3.32`
popd
if [ ${#var_pr} = 1 ] 
then cp ~/Ubersicht/checkpr.widget/resources/ghprstatus.0.png ~/Ubersicht/checkpr.widget/resources/ghprstatus.png
else cp -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.1.png ~/Ubersicht/checkpr.widget/resources/ghprstatus.png
fi