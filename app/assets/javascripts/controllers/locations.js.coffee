App.LocationsRoute = Ember.Route.extend(
  setupController: (controller, location) ->
    controller.set "model", location
    return
)
