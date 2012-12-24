#  Page
#  adds render function to the controller
class Page extends Spine.Controller
  ->
    super ...
    @log = require('log')
    @el.addClass(@constructor.displayName)
    
  render:  ->
  	# create page-element and render
    page = $('<div data-role="page">')
      ..html @template(@) if @template
    # hook your own rendering-logic on the render event
    @trigger 'render',page
    # add to DOM and do the JQM magic.
    @el 
      ..append(page)
      ..appendTo('body') 
    $.mobile.changePage(page, options with {-changeHash})
    # old page is cleaned up in jquery.mobile.setup.js
    # but @el remains!

module.exports = Page