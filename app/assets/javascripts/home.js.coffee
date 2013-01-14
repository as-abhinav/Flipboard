# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
  $container 	= $( '#flip' )
  $pages		  = $container.children().hide()

  Modernizr.load
    test: Modernizr.csstransforms3d && Modernizr.csstransitions,
    yep : ['assets/jquery.tmpl.min.js','assets/core.string.js','assets/jquery.touchSwipe-1.2.5.js','assets/jquery.flips.js'],
    nope: 'assets/fallback.css',
    callback : ( url, result, key ) ->
      if( url is 'assets/fallback.css' )
        $pages.show()
      else if( url is 'assets/jquery.flips.js' )
        $container.flips()