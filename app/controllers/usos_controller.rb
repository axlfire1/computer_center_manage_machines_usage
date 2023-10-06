class UsosController < ApplicationController
  def show_available
    @computadoras = Computadora.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @computadoras }
    end
    
  end

  def select_users
    @computadora = Computadora.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @computadora }
    end
  end
  
  def save_uso
    @computadora = Computadora.find(params[:computadora])
    @usuario = Usuario.find_by_matricula(params[:matricula])
    if @usuario == nil
      redirect_to show_available_path, notice: 'Usuario invalido.'
    else
            if
      @uso=@usuario.usos.create
      @uso.hora_llegada=Time.now
      @uso.usuario=@usuario
      @uso.computadora=@computadora
      @computadora.estado=false
      @usuario.estado=false
      @computadora.save
      @usuario.save
      @uso.save
      
      redirect_to show_available_path, notice: 'Maquina registrada correctamente.'
    else
          
        redirect_to select_users_path, notice: 'Matricula invalida.'
     
      
    end
  end
  end
  
  def insert_users
    
  end
  
  def release_machine
    @usuario = Usuario.find_by_matricula(params[:matricula]) 
    if @usuario
      @uso= @usuario.ultimo_uso
      if @uso
        @usuario.estado=true
        @uso.computadora.estado=true
        @uso.computadora.save
        @uso.hora_salida=Time.now
        @uso.save
        @usuario.save
        redirect_to show_available_path, notice: 'Salida registrada correctamente.'
      else
        redirect_to show_available_path, notice: 'No tiene computadora en uso actualmente.'
      end
    else
      redirect_to insert_users_path, notice: 'Matricula invalida.'
    end
  end
end
