# A widget that displays your calendar events for today and tomorrow
# Made by David Brooks
# First time ever writing in JavaScript
# Using icalBuddy found here: http://hasseg.org/icalBuddy/

# This command shows all of your events for today and tomorrow
command: "'ical.widget/icalBuddy' -n -nc -iep 'title,datetime' -ps '| : |' -po 'datetime,title' -tf %H:%M -eed eventsToday 2>devnull"

# Uncomment this command if you want to not show which calendar the events are for
#command: "'ical.widget/icalBuddy' -sd -nc -n eventsToday+1 2>/dev/null"

# the refresh frequency is 1 hour
refreshFrequency: 3600000

style: """
  top: 442px
  right: 60px
  color: rgba(#d6d6d6, 0.9)
  font-family: -apple-system
  
  div
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 10pt
    font-weight: 300
"""

renderLine: (string) -> """
  <div class='ical'>
    <div class='label'>#{string}</div>
"""

update: (output, domEl) ->
  lines = output.split('\n')
  $(domEl).html ''
  $(domEl).html 'No more Events Today' if output is ""
  for line in lines
    myline = line.substr(0, 30)
    $(domEl).append @renderLine(myline)

