/*
	Page

	adds render function to the controller
*/
class Page extends Spine.Controller
	@ <<< Spine.Controller

	->
		super ...
		@log = require('log')
		# for easy styling of page-specific elements
		# add className as css-class
		@el.addClass(@constructor.displayName)
		
	# render template
	render: (options) ->
		# create a fresh new element, 
		# otherwise the jqm-magic won't happen on second render
		page = $('<div data-role="page">')
		# render page
		page.html @template(@) if @template
		# add page to controller element
		@el.append(page)
		# add page to the DOM so jqm can change it
		#doesn't append twice on second render - only moves it
		@el.appendTo('body') 
		# change page
		$.mobile.changePage(page, options or {} <<< changeHash: no)
		# old page is cleaned up in jquery.mobile.setup.js
		# but @el remains!

module.exports = Page