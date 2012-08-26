Page = require('controllers/page')
template = require ('views/pages/{{name}}')

class {{#camelize}}{{name}}{{/camelize}} extends Page
	{template}

module.exports = {{#camelize}}{{name}}{{/camelize}}