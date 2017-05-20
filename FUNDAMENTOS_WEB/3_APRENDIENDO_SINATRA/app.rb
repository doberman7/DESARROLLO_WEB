# preguntar a ABEL!!!!
  # a este archvio se le llama constrolador???
require 'sinatra'
require "sinatra/activerecord"
#require 'users_app/models/user.rb'

require './models/user.rb'
#------------------------------------
#Lo que está haciendo es establecer una conexión a la DB llamada users.sqlite3, haciendo uso del adaptador de sqlite3
set :database, {adapter: "sqlite3", database: "db/users.sqlite3", pool: 30}
get '/' do
  erb :index
end
#-----------
#definir la ruta /users en nuestro controlador:
post '/users' do
  # Capturamos los valores del formulario con 'params'
  name  = params[:name]
  email = params[:email]
  # Creamos una instancia de la clase User con sus atributos necesarios
  user  = User.new(name: name, email: email)
  # Si el usuario se guardó en la DB, redirige a su perfil, de otra forma
  # vuelve a mostrar el formulario.
  if user.save
    redirect to("/users/#{user.id}")
  else
    erb :index
  end
end
#---------------------------
#Crea la ruta del perfil del usuario.
#Lo que está haciendo el controlador es hacer uso de ActiveRecord para buscar un usuario basado en su id, lo guardamos en una variable de instancia para usarla en el template profile.erb. También date cuenta que estamos obteniendo el id de la url /users/:id a través de params. En la url los dos puntos, seguidos de un nombre, por ejemplo :id es un placeholder, que puede tomar cualquier valor que llegue a esa URL, en este caso ID's.
get '/users/:id' do
  @user = User.find(params[:id])
  erb :profile
end
#------------------------------
#generar una ruta que nos muestre todos los usuarios existentes en la DB.
#definir ruta
get '/users' do
  #En este punto vamos a la DB para traer todos los usuarios. Esto nos regresa un arreglo de objetos User, el cual estamos guardando en la variable @users
  @users = User.all
  # Luego estamos rendereando el template erb :users para mostrar una vista donde desplegaremos los usuarios.
  erb :users
end
