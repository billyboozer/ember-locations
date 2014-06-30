# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  App.Router.reopen
    location: 'auto'
    rootURL: '/'

