#!/bin/bash
function check_us_pr {
    var_pr=$`/opt/homebrew/bin/gh pr list -R darquiel/themes --search base:main` 
    if [ ${#var_pr} = 1 ] 
    then 
        cp ~/Ubersicht/checkpr.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.widget/resources/status-us.png
    else 
        cp -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.widget/resources/status-us.png
    fi
}

function check_scripts_pr {
    var_pr=$`/opt/homebrew/bin/gh pr list -R darquiel/scripts --search base:main` 
    if [ ${#var_pr} = 1 ] 
    then 
        cp ~/Ubersicht/checkpr.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr.widget/resources/status-scripts.png
    else 
        cp -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr.widget/resources/status-scripts.png
    fi
}

check_us_pr
check_scripts_pr
