//This is to prevent any jQuery code from running before the document is finished loading (is ready).
$(function(){
  // WINDOW is the super global object in client-side JavaScript, all the functions and variables that are defined in the global context are methods and properties of the window object.
  //Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
  $(window).on("scroll", function () {
    // Aquí deberás escribir la lógica que modificará la barra
    console.log($(window).scrollTop());
  		if($(window).scrollTop() > 800 && $(window).scrollTop() < 850)
  		{
  			alert('mission accomplished');
  		}
      });
  });
)};
