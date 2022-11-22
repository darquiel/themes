# The best way to display a photo is to store it locally as you see below
# in the "pic-display.widget/Pics/" folder.

# You can also use a URL, e.g. "echo http://i.imgur.com/d9T8eJV.png"
# However this method doesn't work when offline.

# Any web image format -- including animated GIFs -- will work.

command: "'checkpr-s.widget/checkp.sh'"

refreshFrequency: '60000'

render: (output)-> """
<a href='https://github.com/darquiel/themes/pulls?q=is%3Apr+is%3Aopen+base%3Amain'>
<img src="checkpr.widget/resources/status-us.png" style="width:20%"></a>
<repos><p>Ubersicht</p></repos>
<a href='https://github.com/darquiel/scripts/pulls?q=is%3Apr+is%3Aopen+base%3Amain'>
<img src="checkpr.widget/resources/status-scripts.png" style="width:20%"></a>
<repos><p>Scripts</p></repos>
""" #                             ^ Change size here.

style: """
	position: center
	right: -25px
	bottom: 9px
	color: rgba(#d6d6d6, 0.8)
	font-family: -apple-system
	font-size: 8pt
	text-align: center
""" #    ^ Change placement here.