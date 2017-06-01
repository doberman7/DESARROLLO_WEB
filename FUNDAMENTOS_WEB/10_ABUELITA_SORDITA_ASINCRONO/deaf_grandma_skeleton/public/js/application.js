// Este código corre después de que `document` fue cargado(loaded) completamente. Esto garantiza que si amarramos(bind) una función a un elemento de HTML este exista ya en la página.
$(document).ready(function() {

 	//Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	$('#forma').submit(function(event){
		//alert('alerta enlazada al formulario antes de que la solicitud sea enviada a la BD');

		//stops the default action of an element from happening.
		event.preventDefault();

    //asignar URL y name=input_user
		var url = '/abuelita';
		var data = $( this ).serialize();

    //replicar la funcionalidad del método serialize() obteniendo el valor de los input de otra manera.
		var data2 = $('input[name=user_input]').val();
		//mostrar en el inspector un string donde se vea=> user_input="lo que se ingresa en el formulario"
		// console.log(data);
		// console.log(data2);

		//las sintaxis de un POST:$.post(URL,data,callback);
			//callback: is a function that will be executed after  some effect is completed

		$.post(url,data, function(callback){
    //_?_como functiona el callBac
    var c = $('d').val(callback);
     //console.log('hola');
		console.log(callback);

		});
	});
});
