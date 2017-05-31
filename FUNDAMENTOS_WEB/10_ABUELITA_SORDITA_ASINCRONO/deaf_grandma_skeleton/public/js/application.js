// Este código corre después de que `document` fue cargado(loaded) completamente. Esto garantiza que si amarramos(bind) una función a un elemento de HTML este exista ya en la página.
$(document).ready(function() {
 	//Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	$('#forma').submit(function(event){
		//alert('alerta enlazada al formulario antes de que la solicitud sea enviada a la BD');
		event.PrevenDefault();
		// aqui
		console.log( $( this ).serialize() );
	});
});
