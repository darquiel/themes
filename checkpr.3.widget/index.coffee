# The best way to display a photo is to store it locally as you see below
# in the "pic-display.widget/Pics/" folder.

# You can also use a URL, e.g. "echo http://i.imgur.com/d9T8eJV.png"
# However this method doesn't work when offline.

# Any web image format -- including animated GIFs -- will work.

command: "'checkpr.3.widget/checkp.sh'"

refreshFrequency: '2m' # 10 seconds

render: (output)-> """
<a href='https://github.com/serve-robotics/skel/pulls?q=is%3Apr+is%3Aopen+base%3Arelease%2Frover%2F3.32'>
<img src="checkpr.3.widget/resources/status.png" style="width:25%"></a>
<repos><p>FW 3.33</p></repos>
""" #                             ^ Change size here.

style: """
	position: center
	right: 5px
	bottom: 200px
	color: rgba(#d6d6d6, 0.8)
	font-family: -apple-system
	font-size: 10pt
	text-align: center
""" #    ^ Change placement here.