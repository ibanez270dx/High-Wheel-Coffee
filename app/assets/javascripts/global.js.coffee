
$(document).ready ->
  
  ######################################
  # Global Methods
  ######################################
  
  # Scale the logo for different resolutions, since we're
  # using responsive bootstrap's collapsable navigation bar.
  scaleLogo = ->
    width = $('div.navbar-inner').width()
    logo = $('a#logo')
    
    if width >= 1200
      logo.css('font-size','40px')
    else if width < 1200 and width >= 980
      logo.css('font-size','30px')
    else if width < 980 and width >= 540
      logo.css('font-size','40px')
    else if width < 540 and width >= 425
      logo.css('font-size','30px')
    else
      logo.css('font-size','20px')
    
  ######################################
  # Global Listeners
  ######################################
  
  # Run scaleLogo when the screen is resized
  $(window).resize (event) ->
    scaleLogo()
    
  ######################################
  # Init
  ######################################
  
  # Enable drop-downs
  $('.dropdown-toggle').dropdown()
  
  # Enable dismissal of alerts
  $(".alert").alert()
  
  # Scale the logo
  scaleLogo()