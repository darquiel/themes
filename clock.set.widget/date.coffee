format = '%d'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 10800

render: (output) -> """
  <h1>#{output}</h1>
"""
# other color options 
# color: #d6d6d6
# color: 4f504f
style: """
  
  color: rgba(#d6d6d6, 0.8)
  font-family: -apple-system
  right: 148px
  top: 24px

  h1
    font-size: 54pt
    font-weight: 400
    margin: 0
    padding: 0
  """
