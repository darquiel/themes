format = '%Y'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 10800

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: rgba(#d6d6d6, 0.8)
  font-family: -apple-system
  right: 250px
  top: 78px

  h1
    font-size: 13pt
    font-weight: 600
    margin: 0
    padding: 0
  """
