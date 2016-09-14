

# command: "#{zoneSet}date +'%H:%M:%S'"
command: "echo hello"
 
refreshFrequency: 1000

render: (output) -> """
		<ul id='clock'>
		<li id='sec'></li>
		<li id='hour'></li>
		<li id='min'></li>
	</ul>
	"""
 
style: """
	clock-size = 150px
	hand-width = 7px
	hand-height = 150px
	image-folder = 'apple-watch'

	url-for(image-name)
		url('analog.clock.widget/'+image-folder+'/'+image-name)

	top: 4px
	right: 160px

	#clock
		position: absolute
		width: clock-size
		height: clock-size
		margin: 0 auto 0 auto
		background: url-for('clockface.white.a.1.png') no-repeat
		list-style: none

	#clock-label
		position: absolute
		font: 12px -apple-system
		color: rgba(#d6d6d6, 0.8)
		width: clock-size
		bottom: (clock-size/4.2)
		left: 0
		text-align: center
		z-index: 1

	#sec, #min, #hour
		position: absolute
		width: hand-width
		height: hand-height
		top: round((clock-size - hand-height)/2)
		left: round((clock-size - hand-width)/2)

	#sec
		background: url-for('sechand.png')
		z-index: 4

	#min
		background: url-for('minhand.solid.png')
		z-index: 3

	#hour
		background: url-for('hourhand.solid.png')
		z-index: 2
"""

update: (output, domEl) ->
	# Date from Unix Terminal
	# comp = output.split ":"
	# seconds = comp[2]; mins = comp[1]; hours = comp[0]

	# Date from Javascript
	date = new Date(); seconds = date.getSeconds(); mins = date.getMinutes(); hours = date.getHours()
	
	sdegree = seconds * 6; srotate = "rotate(" + sdegree + "deg)"
	mdegree = mins * 6 + (seconds / 10); mrotate = "rotate(" + mdegree + "deg)"
	hdegree = hours * 30 + (mins / 2); hrotate = "rotate(" + hdegree + "deg)"

	$(domEl).find("#sec").css "transform", srotate
	$(domEl).find("#min").css "transform", mrotate
	$(domEl).find("#hour").css "transform", hrotate
