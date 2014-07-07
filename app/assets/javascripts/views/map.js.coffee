App.MapView = Ember.View.extend(
  id: "map"
  tagName: "div"
  attributeBindings: ["style"]
  style: "height: 500px; width: 100%;"
  location: location
  didInsertElement: ->
    center = new google.maps.LatLng(33.5205556, -86.8025)
    mapOptions =
      center: center
      zoom: 6
      scrollwheel: false
    map = new google.maps.Map(@$().get(0), mapOptions)
    @markers(map)
    # marker = new google.maps.Marker(
    #   position: new google.maps.LatLng(33.5205556, -86.8025)
    #   map: map
    # )
    @set "map", map
    return
  markers: (map)->
    $.getJSON "/api/locations", (data) ->
      console.log data.locations.length
      for i in data.locations
        console.log i.lat
        console.log i.lng
        marker = new google.maps.Marker(
          position: new google.maps.LatLng(i.lat, i.lng)
          map: map
        )
        marker
)
