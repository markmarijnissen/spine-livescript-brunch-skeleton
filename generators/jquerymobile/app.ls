# AppController
class AppController extends Spine.Controller
  pages: {}
  
  ->
    super ...
    @log = require('log')
    window.App = @
    createGoto = (route) ~> ~> @goto(route)
    for route of @pages
      Spine.Route.add route,createGoto(route)
    $ ~>
      Spine.Route.setup({history: no, shim: no})
    
  goto: (route) ->
    @log('goto', route) 
    page = @pages[route]
    if typeof page == "function"
      @pages[route] = page = new page!
    if page?
      page.render!
    else
      @log.error("Page not found",route)
      @trigger('error',"Page not found",route)
  
module.exports = AppController