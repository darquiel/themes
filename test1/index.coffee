#  command: "echo Hello World!"
#
#  refreshFrequency: 5000 # ms
#
#  String::truncate = (n) ->
#  @substr(0, n - 1) + ((if @length > 20 then "&hellip;" else ""))
#
#  render: (output) ->
#    newoutput = output.substr(0, 9)
#    "<h1>#{newoutput + "..."}</h1>"
#
#
#
#  style: """
#    left: 20px
#    top: 20px
#    color: #fff
#  """