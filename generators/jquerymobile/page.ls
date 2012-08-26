/*
	Page

	adds render function to the controller
*/
class Page extends Spine.Controller
	@ <<< Spine.Controller #why is this needed ?

	->
		super ...
		@log = require('log')
		# for easy styling of page-specific elements
		# add className as css-class
		@el.addClass(@constructor.displayName)
		
	# render template
	render: (options = {}) ->
		# create a fresh new element, 
		# otherwise the jqm-magic won't happen on second render
		page = $('<div data-role="page">')
		# render page
			..html @template(@) if @template
		@el
		# add page to controller element
			..append(page)
			# add page to the DOM so jqm can change it
			#doesn't append twice on second render - only moves it
			..appendTo('body') 
		# change page
		$.mobile.changePage(page, options with {-changeHash})
		# old page is cleaned up in jquery.mobile.setup.js
		# but @el remains!

module.exports = Page