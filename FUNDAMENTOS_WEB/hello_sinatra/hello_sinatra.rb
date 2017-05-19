require 'sinatra'

=begin primera explicaionc
			#El método get tomará un bloque de código y el valor retornado del bloque es enviado como la respuesta al web browser. Usualmente esto será un string conteniendo código HTML.
			get "/" do
			  "Hello, world!"
			end
			#luego en la consola 'ruby hello_sinatra.rb' => Sinatra (v2.0.0) has taken the stage on 4567 for development with backup from Thin
=end

=begin
		1) Crea una sencilla web app usando Sinatra y Ruby que imprima tu nombre y el número de vocales que tiene el nombre.
		2) Para esto, define el método count_vowels que recibe como parámetro name y regresa el mensaje "My name is Carlos Monsanto and it has 5 vowels". Recuerda substituir el nombre y el número de vocales en el string que regresa el método.
=end

def count_vowels(name='ivan rubio')
	number_of_vowels = name.scan(/[aeiou]/).count
	"My name is #{name} and it has #{number_of_vowels} vowels"
end

get "/" do
  count_vowels
end
