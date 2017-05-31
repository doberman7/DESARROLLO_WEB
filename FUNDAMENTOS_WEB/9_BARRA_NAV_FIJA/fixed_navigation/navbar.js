
  $(window).on('scroll', function() {
    var st = $(this).scrollTop();

    var calc  = (1-st/50)

    console.log(calc);
     /* avoid unnecessary call to jQuery function */
     if (calc >= '1') {
        $('.top-nav').css({ 'opacity' : 1});

     } else if (calc < '0') {
       $('.top-nav').css({ 'opacity' : 0.5 })
     }



  });
