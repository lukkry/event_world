#= require jquery
#= require jquery_ujs
#= require_tree .

$(document).ready ->
  options = {
    zoom: 7,
    center: new google.maps.LatLng(51.930718, 19.226074),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  new google.maps.Map(document.getElementById("map_canvas"), options)
