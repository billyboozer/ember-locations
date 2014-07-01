App.MapView = Ember.View.extend(
  id: "map"
  tagName: "div"
  attributeBindings: ["style"]
  style: "height: 500px; width: 100%;"
  map: null
  didInsertElement: ->
    center = new google.maps.LatLng(33.5205556, -86.8025)
    mapOptions =
      center: center
      zoom: 6
      scrollwheel: false
      # disableDefaultUI: true

    # save them both for later use
    map = new google.maps.Map(@$().get(0), mapOptions)
    @set "marker", marker
    @set "map", map
    return
)
