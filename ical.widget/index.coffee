# A widget that displays your calendar events for today and tomorrow
# Made by David Brooks
# First time ever writing in JavaScript
# Using icalBuddy found here: http://hasseg.org/icalBuddy/

# note use the following command to updsate the current calendar list
# command: "'ical.widget/icalBuddy' calendars ' > calendarlist.new.txt'"

# This command shows all of your events for today and tomorrow
command: "'ical.widget/icalBuddy' -ec 'F7C98D85-3671-4279-88B4-0C9C22416742,84C943BA-A55E-41F9-A920-ECC0E27179BB,DC6F4246-383F-4339-97F5-4BBDFDD7CC3D,0765A222-A3E8-40C6-AFB4-AB97DEE2CB51,00C6DE2D-4429-401E-B286-BFC8B1546F1F,3770543B-69D3-4EBC-9AC2-685DF39AD5F1,9D4E6A12-889C-48CA-AE08-81505DF1E444,75AE9982-319C-44DD-AE0D-EF1EA789AA6E,520B1930-9E36-48AA-89B6-5655A9742C2F,D293B79D-CE46-4309-8F11-48DAA3A0507E,49482F5B-EC73-42F3-A0A5-3970DAA01A66,BB802590-B3DA-4057-9395-B2F5C724EC07' -n -nc -iep 'title,datetime' -ps '| : |' -po 'datetime,title' -tf %H:%M -eed eventsToday 2>devnull"

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

