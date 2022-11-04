#!/bin/bash
function check_fw_pr {
    var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/skel --search base:release/fleetware/3.33` 
    if [ ${#var_pr} = 1 ] 
    then 
        cp ~/Ubersicht/checkpr-s.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr-s.widget/resources/status-fw.png
    else 
        cp -f ~/Ubersicht/checkpr-s.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr-s.widget/resources/status-fw.png
    fi
}

function check_x_pr {
    var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/x --search base:release/rover/3.33` 
    if [ ${#var_pr} = 1 ] 
    then 
        cp ~/Ubersicht/checkpr-s.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr-s.widget/resources/status-x.png
    else 
        cp -f ~/Ubersicht/checkpr-s.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr-s.widget/resources/status-x.png
    fi
}

function check_rbt_pr {
    var_pr=$`/opt/homebrew/bin/gh pr list -R serve-robotics/skel --search base:release/rover/3.33` 
    if [ ${#var_pr} = 1 ] 
    then 
        cp ~/Ubersicht/checkpr-s.widget/resources/ghprstatus.0a.png ~/Ubersicht/checkpr-s.widget/resources/status-rbt.png
    else 
        cp -f ~/Ubersicht/checkpr-s.widget/resources/ghprstatus.1a.png ~/Ubersicht/checkpr-s.widget/resources/status-rbt.png
    fi
}

check_fw_pr
check_x_pr
check_rbt_pr