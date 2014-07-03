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
    @set "map", map
    marker = @get("controller")
    console.log(marker)
    return
)
