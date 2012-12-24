sysPath = require 'path'

startsWith = (string, substring) ->
  string.lastIndexOf(substring, 0) is 0

exports.config =
  paths:
    public: 'builds/web'

  conventions:
    ignored: (path) ->
      basename = sysPath.basename(path)
      (startsWith basename, '_') or (/-gap\.(j|l)s$/.test(basename))

  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.8.2.js',
          'vendor/scripts/bootstrap.min.js',
          'vendor/scripts/jquery.mobile.setup.js',
          'vendor/scripts/jquery.mobile-1.2.0.js',
          'vendor/scripts/spine/spine.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/normalize.css',
                'app/styles/jquery.mobile.structure-1.2.0.css',
                'app/styles/bootstrap/bootstrap.less',
                'app/styles/bootstrap/responsive.less']
        after: ['app/styles/app.less']

    templates:
      defaultExtension: 'jade'
      joinTo: 'javascripts/app.js'

  server:
    path: 'server/server.js'
    base: '/'
    run: yes

