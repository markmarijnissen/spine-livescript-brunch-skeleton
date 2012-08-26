Spine-jade-brunch-skeleton
==========================

Brunch Skeleton with Spine.js, using LiveScript, Jade and Less.

Optional boilerplate for jQuery Mobile apps in Android (using Phonegap)

Optional Twitter Bootstrap

### Install:
```bash
	# you need brunch
	npm install brunch -g 
	
	# clone skeleton
	git clone https://github.com/markmarijnissen/spine-livescript-brunch-skeleton.git myapp
	cd myapp
	
	# install node dependencies
	npm install
	
	# add Twitter Bootstrap (optional)
	brunch generate bootstrap please
	# manually copy the image files from generators/bootstrap to app/assets/img/

	# add jQuery Mobile (optional)
	brunch generate jquerymobile please 
	# manually copy the image files from generators/jquerymobile to app/assets/img/
	
	# generate a page (optional)
	brunch generate page home
	# edit app controller (/app/controllers/app.ls) to include this page
	
	# generate other stuff (optional)
	brunch generate model mymodel
	brunch generate controller mycontroller
```

### Android build
1. Create an (android) eclipse project from existing source: `builds/android`
2. `brunch w -c android.coffee`
3. Launch in eclipse