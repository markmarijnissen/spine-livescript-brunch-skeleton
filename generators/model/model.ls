class {{#camelize}}{{name}}{{/camelize}} extends Spine.Model
	@configure('{{#camelize}}{{name}}{{/camelize}}') # add attributes
	@extend(Spine.Events)
	
	->
		super ...
		
module.exports = {{#camelize}}{{name}}{{/camelize}