template = require('views/app')

class AppController extends Spine.Controller
	template: template

	->
		super ...
		@render!

	render: ->
		@html @template(@)
					
module.exports = AppController