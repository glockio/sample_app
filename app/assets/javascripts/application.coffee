#= namespace
#= require jquery
#= require underscore_development
#= require backbone
#= require namespace
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./templates
#= require_tree ./views
#= require_self


class App.InputRouter extends Backbone.Router

  initialize: -> 
    readingView= new App.ReadingView





# James Help
class App.Router extends Backbone.Router

  initialize: ->
    my_view = new App.InputView
   

  testing: ->
    console.log 'fuck yes'

  routes: 
    '': 'greeting'

  greeting: -> 
    alert "Welcome To My Sample App"







