class EventWorld
  constructor: (@lat, @lng, @zoom) ->
    @bounds = new google.maps.LatLngBounds()
    @markers = []
    @map = @initMap()
    @initFaye()

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
    marker

  addInfoWindow: (marker, content) ->
    infoWindow = new google.maps.InfoWindow({
      content: content
    })
    infoWindow.open(@map, marker)
    google.maps.event.addListener(marker, 'click', ->
      infoWindow.open(@map, marker)
    )
    infoWindow

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
      marker = @addMarker(message.lat, message.long)
      if message.body
        @addInfoWindow(marker, message.body)
    )
    sub.errback((error) -> alert(error.message))

$(document).ready ->
  new EventWorld(51.930718, 19.226074, 7)
