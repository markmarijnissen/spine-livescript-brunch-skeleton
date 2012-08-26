Spine-jade-brunch-skeleton
==========================

Brunch Skeleton with Spine.js, using LiveScript, Jade and Less.

Optional boilerplate for jQuery Mobile apps in Android (using Phonegap)

### Install:
```bash
	npm install brunch -g # if you don't have brunch already
	git clone https://github.com/markmarijnissen/spine-livescript-brunch-skeleton.git
	npm install
	brunch generate jquerymobile please # optional, jquery mobile skeleton
	# copy the image files to from generators/jquerymobile to /assets/img/
	brunch generate page home
	# add home page controller in /app/controllers/app.ls
	brunch generate model mymodel
	brunch generate controller mycontroller
```

### Android build
1. Create an (android) eclipse project from existing source: `builds/android`
2. `brunch w -c android.coffee`
3. Launch in eclipse