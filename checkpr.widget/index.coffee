# The best way to display a photo is to store it locally as you see below
# in the "pic-display.widget/Pics/" folder.

# You can also use a URL, e.g. "echo http://i.imgur.com/d9T8eJV.png"
# However this method doesn't work when offline.

# Any web image format -- including animated GIFs -- will work.

command: "echo ./checkpr.widget/resources/ghprstatus.png" # < Set image here.
# Command to attempt check for pending PR's
# var_pr=$`gh pr list --serach release/rover/3.32` ; if [ ${#var_pr} = 1 ];  then cp ~/Ubersicht/checkpr.widget/resources/ghprstatus.0.png ~/Ubersicht/checkpr.widget/resources/ghprstatus.png; else cp -f ~/Ubersicht/checkpr.widget/resources/ghprstatus.1.png ~/Ubersicht/checkpr.widget/resources/ghprstatus.png; fi

refreshFrequency: 500 # 10 seconds

render: (output)-> """
<img src="./checkpr.widget/resources/ghprstatus.png" style="width:50%">
""" #                             ^ Change size here.

style: """
	position: absolute
	left: 0%
	top: 0%
""" #    ^ Change placement here.