# AppController
#
# Holds all page-controllers
class AppController extends Spine.Controller
	page:null

	# Define page-controllers, format is { name: PageControllerInstance }
	# When a page-class is given, the page will be instantiated on first use (lazy loading)
	pages: {}
	
	# Define routes (e.g. with ~> @goto 'pageName')
	routing: -> 
	#	"/": 				~> @goto 'start'
			
	->
		super ...
		# override log with my custom log	
		@log = require('log')
		# set global var (useful for debugging)
		window.App = @
		# add routes	
		for route,func of @routing!
			Spine.Route.add route,func
		$ ~>
			shim = no
			Spine.Route.setup({-history, shim})
			if shim then @navigate('/')
		
	# render a page-controller (given a page-name)
	goto: (page, options) ->
		@log('goto', page)	
		#instantiate if a class is given
		if typeof @pages[page] == "function"
			@pages[page] = new @pages[page](options)
		#render if possible
		that.render(options) if @pages[page]
		#error when page-controller undefined
		unless @pages[page]
			@log.error("Page not found",page)
			@trigger('error',"Page not found",page)
	
module.exports = AppController