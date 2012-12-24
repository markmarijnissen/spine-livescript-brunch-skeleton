template = require('views/{{name}}')

module.exports = class {{#camelize}}{{name}}{{/camelize}} extends Spine.Controller
	@template = template

	->
		super ...

	render: -> 
		@html template(@)