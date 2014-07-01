App.Location = DS.Model.extend
  title: DS.attr('string')
  address: DS.attr('string')
  lat: DS.attr('number')
  lng: DS.attr('number')
  comment: DS.attr('string')
