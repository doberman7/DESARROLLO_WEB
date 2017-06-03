//http://www.jacklmoore.com/notes/jquery-tabs/
$('ul.tabs').each(function(){
  //ENCONTRAR 'a'
  // se iterata en cada 'ul.tabs' ejecutando la funcion por cada elemento
  //For each set of tabs, we want to keep track of which tab is active and its associated content
  //cada variables busca el elemento 'a' en 'ul.tabs'
  //todas estas retornan  un  prevObject: ya que no train algo aun
  var $active = $(this).find('a');
  var $links = $(this).find('a');
  var $content = $(this).find('a');

  /*FILTAR el activo
    If the location.hash matches one of the links, use that as the active tab.
    If no match is found, use the first link as the initial active tab.

    .filter: filtra los elemtos a aquellos que emparejan con el selector
    .locartion.hash: returna parte del url(anchor),esto es, el href,
    sea, #tab1 o #tab2 o #tab3
    PREGUNTAR ????? [0]*/
  $active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);
  $active.addClass('active');//agregar clase activo
  $content = $($active[0].hash);//"tab1" PREGUNTAR esto es tab1


  /*OCULTAR
    1)los que no forman parte de la clase 'active'
    2) cada uno
    3)PREGUNTAR -> $(this.hash)
    4) ocultar
  */
  $links.not($active).each(function () {
    $(this.hash).hide();
  });

  // ENLAZAR clic handler
  $(this).on('click', 'a', function(e){
    // Hacer las viejas tablas inactivas
    $active.removeClass('active');
    $content.hide();

    // Update the variables with the new link and content
    $active = $(this);
    $content = $(this.hash);

    // Make the tab active.
    $active.addClass('active');
    $content.show();

    // Prevent the anchor's default click action
    e.preventDefault();

    //Durante el click mostrar el tab
    $(".tabs a").on('click', function(e){
        $(this).parent('li').addClass('active').siblings().removeClass('active');
        console.log(this)
    });

  });
});
