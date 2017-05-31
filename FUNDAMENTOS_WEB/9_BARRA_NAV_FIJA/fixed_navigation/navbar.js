//target el objeto window en el scroll
  $(window).on('scroll', function() {
    //asignar el scrollTop del window a un var
    var st = $(this).scrollTop();
    // visualizar en la consola del INSPECTOR los valores del 'st'
    console.log(st);
    //SI 'st' es mayo a 80 disminuir la opacidad a la mitad, la cual acepta solo valores entre 1 y 0
     if (st > '80') {
        $('.top-nav').css({ 'opacity' : 0.5});
    // SI 'st' es menor o igual a 80 la opacidad es 1 o sea default
     } else if (st <= '80') {
       $('.top-nav').css({ 'opacity' : 1 });
     }
  });
