App.PostsRoute = Ember.Route.extend
  model: ->
    # @get('store').j
    # @store.find('post')
    @store.findAll('post')
