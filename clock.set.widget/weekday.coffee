format = '%A'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 10800

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: rgba(#d6d6d6, 0.9)
  font-family: -apple-system
  right: 154px
  top: 105px

  h1
    font-size: 14pt
    font-weight: 400
    margin: 0
    padding: 0
  """
