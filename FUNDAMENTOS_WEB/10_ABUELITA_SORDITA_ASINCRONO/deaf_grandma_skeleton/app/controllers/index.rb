# metodo para transformar el input del formulario en el caso siin ajax
def abuelazo(user_input)
  case user_input
    when 'bye tqm'  then redirect to('/?abuelita=bye morro')
    when user_input.upcase   then redirect to('/?abuelita=NO, NO DESDE 1983')
     else redirect to('/?abuelita=HUH?, NO TE ESCUCHO HIJO!')
  end
end
# metodo para transformar el input del formulario en el caso xhr request
def abuelazo_requestXhr(user_input)
  case user_input
    when 'bye tqm'  then 'bye morro  requestXhr'
    when user_input.upcase   then 'NO, NO DESDE 1983  requestXhr'
    else 'HUH?, NO TE ESCUCHO HIJO!....requestXhr'
  end
end

get '/' do
  @abuelita = params[:abuelita]
  erb :index
  # Visita app/views/index.erb
end

#redirect to: Redirecciona el navegador al destino especificado en el parametro.
post '/abuelita' do
  user_input = params[:user_input]
  if request.xhr?# respond to Ajax request
    abuelazo_requestXhr(user_input)
  else# respond to normal request
    abuelazo(user_input)
  end

end
