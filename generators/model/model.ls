class {{#camelize}}{{name}}{{/camelize}} extends Spine.Model implements Spine.Events
	@configure('{{#camelize}}{{name}}{{/camelize}}') # add attributes
		
module.exports = {{#camelize}}{{name}}{{/camelize}