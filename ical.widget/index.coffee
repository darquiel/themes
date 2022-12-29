# A widget that displays your calendar events for today and tomorrow
# Made by David Brooks
# First time ever writing in JavaScript
# Using icalBuddy found here: http://hasseg.org/icalBuddy/
# note use the following command to updsate the current calendar list
# command: "'ical.widget/icalBuddy' calendars ' > calendarlist.new.txt'"

# This command shows all of your events for today and tomorrow
command: "'ical.widget/icalBuddy' -ec '71550649-E92E-AC74-21AC-E8B6AB8B0A80,71A73F29-34ED-4500-A7CE-89A2F204D97E,71550649-E92E-AC74-21AC-E8B6AB8B0A80,BE7108E8-AA9C-45EA-A958-FA057C80ADB1' -n -nc -iep 'title,datetime' -ps '| : |' -po 'datetime,title' -tf %H:%M -eed eventsToday 2>devnull"

# the refresh frequency is 1 hour
refreshFrequency: 10000

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

