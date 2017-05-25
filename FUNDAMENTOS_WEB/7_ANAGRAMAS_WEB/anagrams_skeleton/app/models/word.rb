class Word < ActiveRecord::Base
  # Remember to create a migration!
	#agrega a tu modelo un método parecido al que usaste en el ejercicio anterior de anagramas.
	def canonical_transf(word)
		 word.split(//).sort.join
	end
	#método que utilizando la base de datos genere una lista de anagramas para una palabra
	def self.canon(word)
		angrams = []
		Word.where(canonical_version: word.canonical_transf) do |w|
			angrams << w
		end
		puts angrams
	end

end
