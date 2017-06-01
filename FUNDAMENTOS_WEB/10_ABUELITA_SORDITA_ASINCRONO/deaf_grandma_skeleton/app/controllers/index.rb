# La forma que tenemos para capturar la información que el usuario introduce en el formulario es por medio de un Hash llamado params.
#
# ¿Cuál es el key y cuál es el value del hash params?
#
# El key es el valor del atributo name del input de tu formulario.
# El value es lo que el usuario haya escrito en el input del formulario.

get '/' do
  @abuelita = params[:abuelita]
  erb :index
  # Visita app/views/index.erb
end

#redirect to: Redirecciona el navegador al destino especificado en el parametro.
post '/abuelita' do

  user_input = params[:user_input]
  if request.xhr?# respond to Ajax request
    # case user_input
    #   when 'bye tqm'  then redirect to('/?abuelita=bye morro')
    #   when user_input.upcase   then redirect to('/?abuelita=NO, NO DESDE 1983')
    #    else redirect to('/?abuelita=HUH?, NO TE ESCUCHO HIJO!')
    # end
  "hola2"
  else# respond to normal request
    case user_input
      when 'bye tqm'  then redirect to('/?abuelita=bye morro')
      when user_input.upcase   then redirect to('/?abuelita=NO, NO DESDE 1983')
       else redirect to('/?abuelita=HUH?, NO TE ESCUCHO HIJO!')
    end
  end

end
