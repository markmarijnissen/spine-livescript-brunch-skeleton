# Log utility
#
# provides some log control by filters en enabling
#
# Set them here:
options = 
	enabled: yes
	logAsTextOnMobile: no
	filter:
		include: //.*//
		exclude: no #/postpone|timelog/

# android-eclipse can only handle text
# weinre has a proper console and can handle everything

#--------------------------------------
if options.enabled
	log = (method,type) -->
		if type.match(options.filter.include) and type.match(options.filter.exclude) is null
			args = [val for key, val of arguments]splice(1)
			args = [JSON.stringify(args)] if options.logAsTextOnMobile and device?
			console[method]?apply console, args
else
	log = ->

Log = log \log
Log.options = options
for method in <[info warn error]> 
	Log[method] = log method

module.exports = Log