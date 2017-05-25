class Word < ActiveRecord::Base
  # Remember to create a migration!
	#agrega a tu modelo un método parecido al que usaste en el ejercicio anterior de anagramas.
	def canonical(word)
		word.split(//).sort.join
	end
	#método que utilizando la base de datos genere una lista de anagramas para una palabra
	def self.canonical(word)
		word.split(//).sort.join
	end

end
