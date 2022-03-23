format = '%B'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 10800

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: rgba(#d6d6d6, 0.9)
  font-family: -apple-system
  right: 148px
  top: 97px

  h1
    font-size: 24pt
    font-weight: 300
    margin: 0
    padding: 0
  """
