=begin
  Iniciar Sesión
  Cerrar Sesión
  Crear cuenta de usuario
  Página secreta
=end

get '/' do
  # La siguiente linea hace render de la vista
  # que esta en app/views/index.erb
  erb :index
end

post '/home' do
  # entradas del formulario
  u_name = params[:user_name]
  u_email = params[:user_email]
  u_password = params[:user_password]

  #Pruebas del post
   user = Usser.new(name: u_name,email: u_email,password: u_password)

    if user.save
      redirect to("/#{user}")
    else
      erb :home
    end


end
