Page = require('controllers/page')
template = require ('views/pages/home')

class Home extends Page
	template: template

	->
		super ...

module.exports = Home