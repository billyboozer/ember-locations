# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  App.Router.reopen
    location: 'auto'
    rootURL: '/'
  @resource 'locations', path: '/', ->
    @resource 'location', path: '/locations/:id'

