class EventWorld
  constructor: (@lat, @lng, @zoom) ->
    @bounds = new google.maps.LatLngBounds()
    @markers = []
    @map = @initMap()

  initMap: ->
    options = {
      zoom: @zoom,
      center: new google.maps.LatLng(@lat, @lng),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    new google.maps.Map(document.getElementById("map_canvas"), options)

$(document).ready ->
  new EventWorld(51.930718, 19.226074, 7)
