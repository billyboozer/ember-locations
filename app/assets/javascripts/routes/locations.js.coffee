App.LocationsRoute = Ember.Route.extend
  model: -> @store.find 'location'
