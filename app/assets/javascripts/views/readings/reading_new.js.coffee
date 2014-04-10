
class App.ReadingView extends Backbone.View
  initialize: -> 
    @render()
    @position()

  render: -> 
    @.$el.html("<h1> What up Biches </h1> <button> Add Number</button>")  #WHY $(this.el), why not just this.el.html?? 
    console.log(@.el) 
  position: -> 
    $('#main-content').append(@.el)

  events: 

    'click button' : "addNumerToDom"
    'click h1': 'hideH1'
  

  hideH1: -> 
    $('h1').hide()

  addNumerToDom: -> 
    console.log("Fired Function")
    if $('#number-list').length==0
      console.log("True")
      number_list= "<ul id='number-list'><li>1</li></ul>"
      $('#main-content').after(number_list)
    else
      console.log("Not True")
      num= +$('#number-list li').last().text()
      num+=1
      html_to_render= "<li>#{num}</li>"
      console.log(num)
      $('#number-list').append(html_to_render)












class App.InputView extends Backbone.View
  template: JST["templates/readings/new"]

  initialize: -> 
    @render()
    @position()

    
    console.log @model

  events:
    'submit form' : 'submit'

  submit: (e) ->
    e.preventDefault()
    @model = new App.ReadingModel
    value = @$input.val()
    @model.set
      sugar_level : value

    @model.save
      # success: ->
      # error:->
      #   console.log 'error my bitches'

    
  render: ->
    # put template inside element
    @$el.html @template
    @$input = @$('input')

  position: ->
    # render element into container
    $('#container').html @$el




