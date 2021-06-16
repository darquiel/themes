# format = '%d %a %l:%M %p'
format = '%H:%M'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 1000

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: rgba(#d6d6d6, 0.9)
  font-family: -apple-system
  right: 63px
  top: 47px

  h1
    font-size: 12px
    font-weight: 400
    margin: 0
    padding: 0
  """
