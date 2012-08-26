$(document).bind("mobileinit", function() { 
    $.mobile.ajaxEnabled = false
    $.mobile.linkBindingEnabled = false
    $.mobile.hashListeningEnabled = false
    $.mobile.pushStateEnabled = false
    $.mobile.defaultDialogTransition = 'none'
    $.mobile.defaultPageTransition = 'none'
})
$(document).on('pagehide','div[data-role="page"]', function(event, ui) { 
    $(event.currentTarget).remove()
})