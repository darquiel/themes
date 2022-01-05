# A widget that displays your calendar events for today and tomorrow
# Made by David Brooks
# First time ever writing in JavaScript
# Using icalBuddy found here: http://hasseg.org/icalBuddy/

# This command shows all of your events for today and tomorrow
command: "'ical.widget/icalBuddy' -ec 'F7C98D85-3671-4279-88B4-0C9C22416742,145CBC4A-A008-4D7D-94F3-586CC48C1E09,C295E953-FD2F-49C4-8989-DF527A93A7A9' -n -nc -iep 'title,datetime' -ps '| : |' -po 'datetime,title' -tf %H:%M -eed eventsToday 2>devnull"

# Uncomment this command if you want to not show which calendar the events are for
#command: "'ical.widget/icalBuddy' -sd -nc -n eventsToday+1 2>/dev/null"

# the refresh frequency is 1 hour
refreshFrequency: 10000
# refreshFrequency: 3600000

style: """
  top: 435px
  right: 70px
  color: rgba(#d6d6d6, 0.9)
  font-family: -apple-system
  font-size: 9pt
  font-weight: 300

  div
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
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
    line = line + '                                                        '
    myline = line.substr(0, 25)
    $(domEl).append @renderLine(myline)

