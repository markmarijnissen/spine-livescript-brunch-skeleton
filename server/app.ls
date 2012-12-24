express = require('express')
http = require('http')
path = require('path')

app = express!

exports.startServer = (port,path) ->
	app.configure ->
		app.set 'port', port || process.env.PORT
		app.set 'views', __dirname + '/views'
		app.set 'view engine', 'jade'
		app.use express.favicon!
		app.use express.logger 'dev'
		app.use express.bodyParser!
		app.use express.methodOverride!
		app.use app.router
		app.use express.static(path || path.join(__dirname, '..','builds','web'))

	app.configure 'development', ->
		app.use express.errorHandler!

	http.createServer app .listen app.get('port'), ->
		console.log "Custom server listening on port " + app.get 'port' 