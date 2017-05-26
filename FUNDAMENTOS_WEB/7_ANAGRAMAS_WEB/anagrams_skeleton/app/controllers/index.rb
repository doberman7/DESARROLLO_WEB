#por metodo GET ir a por default ir index.erb
get '/' do
  erb :index
end

#con GET ir a word.erb y asignar el hash {:new_word => input del usuario}
get '/:new_word' do

	@new_word = params[:new_word]
  #ASSIGNAR a variable de instancia , el resultado del metodo 'canon_s'
  @anagramas = Word.canon(@new_word)
  #mostrar vista word.erb
  erb :word
end
#com POST redireccionar a :user_word
post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end
