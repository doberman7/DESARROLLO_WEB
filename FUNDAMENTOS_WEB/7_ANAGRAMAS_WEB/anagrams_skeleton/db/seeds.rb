# Este archivo sirve para correr código que te permita rellenar tu base de datos con información.

def canonical(word)
	word.split(//).sort.join
end
#File.open("words"), es capaz de leer File aun cuando el mismo esta un nivel arriba, esto es, ../words

#abrir 'words' cada linea es 'word'
File.open("words").each.with_index do |word|
	#ASIGNAR a 'canon_w' cada palabra sin el salto de linea("/n")
	canon_w=canonical(word.chomp)
	#CREAR un objeto Word e insertarlo en la BD con las columnas 'word' y 'canonical_version'
	p Word.create(word: word.chomp, canonical_version:canon_w)
end
