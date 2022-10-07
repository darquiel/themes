# The best way to display a photo is to store it locally as you see below
# in the "pic-display.widget/Pics/" folder.

# You can also use a URL, e.g. "echo http://i.imgur.com/d9T8eJV.png"
# However this method doesn't work when offline.

# Any web image format -- including animated GIFs -- will work.

#command: "echo ./checkpr.widget/resources/ghprstatus.png" # < Set image here.
command: "/usr/local/bin/pwsh ./Users/mja/Ubersicht/checkpr.widget/check-pr.ps1"

refreshFrequency: 300000 # 5 Minutes

render: (output)-> """
<img src="./checkpr.widget/resources/ghprstatus.png" style="width:100%">
""" #                             ^ Change size here.

style: """
	position: absolute
	left: 0%
	top: 0%
""" #    ^ Change placement here.