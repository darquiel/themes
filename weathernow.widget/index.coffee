# TODO: Add your location and forecast.io api key below
apiKey   = 'ec382d4e889114208c9bcc1a835f303c'
location = '37.581978,-121.962073'

exclude  = "hourly,alerts,flags"
command: "curl -s 'https://api.forecast.io/forecast/#{apiKey}/#{location}?units=auto&exclude=#{exclude}'"


# Refresh every 600 seconds
refreshFrequency: 600000

render: (o) -> """
  <div class='weather'>
    <div class='icon'></div>
    <div class='temp'></div>
    <div class='summary'></div>
  </div>
"""

update: (output, domEl) ->
  data  = JSON.parse(output)
  $domEl = $(domEl)

  $domEl.find('.temp').html """
    <div class='now'>#{Math.round(data.currently.apparentTemperature)}°</div>
    <div class='hilow'>
        <div class='hi'>#{Math.round(data.daily.data[0].temperatureMax)}°</div>
        <div class='lo'>#{Math.round(data.daily.data[0].temperatureMin)}°</div>
    </div>
  """

  #$domEl.find('.summary').text "#{data.currently.summary}, #{data.minutely.summary}"
  $domEl.find('.summary').text "#{data.currently.summary}"
  $domEl.find('.icon')[0].innerHTML = @getIcon(data.currently)


renderForecast: (data) ->
  """
    <div class='entry'>
      <div class='icon'>#{@getIcon data}</div>
      <div class='temp'>#{Math.round(data.temperatureMax)}°</div>
    </div>
  """

style: """
  top  : 150px
  right : 160px
  color: #fff
  color: rgba(255,255,255,0.7)
  font-family: Helvetica Neue
  text-align: left
  width: 230
  

  @font-face
    font-family Weather
    src url(weathernow.widget/icons.svg) format('svg')

  .weather
    display: inline-block
    text-align: left
    position: relative

  .icon
    font-family: Weather
    font-size: 45px
    line-height: 65px
    position: absolute
    left: 0
    top: -5px
    vertical-align: middle

  .temp, .summary
    padding-left: 70px

  .temp
    font-weight: 200
    font-size: 32px
    vertical-align: middle

    .now
      float: left
      padding-right: 2px

    .hilow
      float: left
      border-left: 2px solid rgba(255, 255, 255, 0.1)
      padding-left: 7px
      margin-left: 7px
      color: #fff
      color: rgba(255,255,255,0.3)

    .hi
      font-size: 12px
      vertical-align: top

    .lo
      font-size: 12px
      vertical-align: bottom

  .summary
    float: clear
    font-size: 14px
    line-height: 1.0
    color: #fff
    color: rgba(255,255,255,0.4)

  .forecast .entry
    display: inline-block
    margin-right: 30px
    text-align: center

    div
      margin-top: 5px

    &:last-child
      margin-right: 10px;

    .temp
      font-size: 120px
      padding: 0

    .icon
      font-size: 15px
      line-height: 20px
      position: static

"""

iconMapping:
  "rain"                :"&#xf019;"
  "snow"                :"&#xf01b;"
  "fog"                 :"&#xf014;"
  "cloudy"              :"&#xf013;"
  "wind"                :"&#xf021;"
  "clear-day"           :"&#xf00d;"
  "mostly-clear-day"    :"&#xf00c;"
  "partly-cloudy-day"   :"&#xf002;"
  "clear-night"         :"&#xf02e;"
  "partly-cloudy-night" :"&#xf031;"
  "unknown"             :"&#xf03e;"

getIcon: (data) ->
  return @iconMapping['unknown'] unless data
  if data.icon.indexOf('cloudy') > -1
    if data.cloudCover < 0.25
      @iconMapping["clear-day"]
    else if data.cloudCover < 0.5
      @iconMapping["mostly-clear-day"]
    else if data.cloudCover < 0.75
      @iconMapping["partly-cloudy-day"]
    else
      @iconMapping["cloudy"]
  else
    @iconMapping[data.icon]

