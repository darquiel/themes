# Time Since widget for Übersicht by John Mathews (github.com/johnmathews/time_since)
# Enter the date and time you want to measure from on line 5
#
# Built from the Fuzzy Time widget by Ruurd Pels (github.com/ruurd/justthedate) 
# and the SideBar widget created by Jonathan MacQueen (https://github.com/jmacqueen) 
# and then Pe8er (https://github.com/Pe8er)

options =
  # Set the start date to count from.
  theDate     : "03/16/2020"
  # Set the opening and closing phrase
  startPhrase : "Shelter in place "
  endPhrase : "days"  
  
options : options
            
command: "osascript 'SIP.widget/Time_Since.applescript' \"#{options.theDate}\""

# Lower the frequency for more accuracy.
refreshFrequency: 1000 * 1 # (1000 * n) seconds

render: (o) -> """
   <div id="content">
     <span id="time"></span>
  </div>
"""

update: (output, dom) ->
  # Get our calculation results.
  values = output.slice(0,-1).split(" ")

  time_str = options.startPhrase + ' ' + values[0] + ' ' + options.endPhrase;
    
  $(dom).find("#time").html(time_str)
        
style: """
  bottom: 79px
  right: 20px
  padding: 1.0em 0
  height: 0em
  width: 50%
  color: rgba(#d6d6d6, 0.9)
  font-family: -apple-system
  font-weight: 300
  text-align: right
  text-transform: none
  text-shadow: 0 0 0.2em black
  font-size: 14px
  letter-spacing: 0.025em
  line-height: 1.2em
"""
