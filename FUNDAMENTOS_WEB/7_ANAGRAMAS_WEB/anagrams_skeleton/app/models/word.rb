class Word < ActiveRecord::Base
  # Remember to create a migration!
	#sin "self.", no lo reconoce como metodo de objeto Word
	def self.canonical_transf(word)
		 word.split(//).sort.join
	end

	#método que utilizando la base de datos genere una lista de anagramas para una palabra
	def self.canon(input)
		angrams = []
		#al input se le transforma a su FORMA CANONICA
		#es necesario hacerlo desde el objeto Word de lo contrario: 'undefined method `canonical_transf' for Word (call 'Word.connection' to establish a connection):Class'
		canonical_input = Word.canonical_transf(input)
		#se SELECCIONA de la 'words' aquello donde el valor de la columna 'canonical_version' es igual al 'canonical_input', luego, se itera sobre cada uno de los resultados
		Word.where(canonical_version: canonical_input).each do |w_object|
			# .Cada resultado es un objeto Word, del cual se obtiene se obtiene el atributo word y se convierte en minusculas, despues se agrega a una ary
			angrams << w_object.word.downcase
		end
		# se ELIMINAN los elemntos repetidos del ary
		angrams.uniq
	end
end
