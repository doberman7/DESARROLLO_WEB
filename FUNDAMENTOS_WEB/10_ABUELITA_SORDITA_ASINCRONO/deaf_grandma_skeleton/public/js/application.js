// Este código corre después de que `document` fue cargado(loaded) completamente. Esto garantiza que si amarramos(bind) una función a un elemento de HTML este exista ya en la página.
$(document).ready(function() {

 	//1)Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	//$('#forma').submit(function(event){

  //Attach an event handler function for one or more events to the selected elements.
  $('#forma').on("submit", function(event){

		//stops the default action of an element from happening.
		event.preventDefault();

    //asignar URL y name=input_user
		var url = '/abuelita';
		var data = $( this ).serialize();

    //replicar la funcionalidad del método serialize() obteniendo el valor de los input de otra manera.
		var data2 = $('input[name=user_input]').val();


		//las sintaxis de un POST:$.post(URL,data,callback);
		$.post(url,data,function(callback){//callback: is a function that will be executed after  some effect is completed

        //mostrar en consola el callback
        console.log(callback);

        //obtener el contenido del elemento parraf
        $('#parraf').html(callback)
		});
	});
});
