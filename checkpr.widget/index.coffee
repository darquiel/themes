# The best way to display a photo is to store it locally as you see below
# in the "pic-display.widget/Pics/" folder.

# You can also use a URL, e.g. "echo http://i.imgur.com/d9T8eJV.png"
# However this method doesn't work when offline.

# Any web image format -- including animated GIFs -- will work.

command: "'checkpr.widget/checkp.sh'"

refreshFrequency: '2m' # 10 seconds

render: (output)-> """
<img src="checkpr.widget/resources/status.png" style="width:75%">
""" #                             ^ Change size here.

style: """
	position: absolute
	left: 0%
	top: 0%
""" #    ^ Change placement here.