class EventWorld
  constructor: (@lat, @lng, @zoom) ->
    @bounds = new google.maps.LatLngBounds()
    @markers = []
    @map = @initMap()
    @initFaye()
    setTimeout((-> $.getJSON('/event_world/events/init_data')), 3000)

  addMarker: (lat, lng) ->
    position = new google.maps.LatLng(lat, lng)
    marker = new google.maps.Marker({
      position: position,
      map: @map,
      draggable: false,
      animation: google.maps.Animation.DROP
    })
    @markers.push(marker)
    @bounds.extend(position)
    @map.fitBounds(@bounds)
    @map.setZoom(@zoom)

  initMap: ->
    options = {
      zoom: @zoom,
      center: new google.maps.LatLng(@lat, @lng),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    new google.maps.Map(document.getElementById("map_canvas"), options)

  initFaye: ->
    client = new Faye.Client(gon.fayePath, { timeout: 120 })
    sub = client.subscribe('/events', (message) =>
      @addMarker(message.lat, message.long)
    )
    sub.errback((error) -> alert(error.message))

$(document).ready ->
  new EventWorld(51.930718, 19.226074, 7)
