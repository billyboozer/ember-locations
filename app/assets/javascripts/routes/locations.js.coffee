App.LocationsRoute = Ember.Route.extend
  model: -> @store.find 'location'
  setupController: (controller, model) ->
    @_super controller, model
    controller.setProperties
      latlng: model.get("latlng")
      title: model.get("title")

    return
