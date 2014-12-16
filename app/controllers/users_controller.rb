class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Gracias por tú inscripción! Ahora puede hacer uso del sistema."
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Su perfil ha sido actualizado."
    else
      render :action => 'edit'
    end
  end 

  def change_state
    user = User.find(params[:id])
    if(user.state == 'inactivo')
      user.state = 'activo'
    else
      user.state = 'inactivo'
    end
    user.save
    @users = User.all
    render 'index'
  end

  def new_user_for_associated
    @user = User.new
    @user.id = params[:associated_id]
  end

  def create_user_for_associated
    if params[:user][:id] != nil
      @associated = Associated.find(params[:user][:id])
      @user = User.new(params[:user])
      @user.id = nil
      if @user.save
        @associated.userId = @user.id
        @associated.email = @user.email
        if @associated.save
          redirect_to '/associateds/'+@associated.id.to_s, :notice => "La cuenta para el Asociado fue creada correctamente."
        else
          @user.destroy
          redirect_to '/associateds/'+@associated.id.to_s, :notice => "Error al crear la cuenta para el associado."
        end
      else
        redirect_to '/users/new_user_for_associated/'+@associated.id.to_s, :notice => "Error al crear el usuario para el associado. Asegúrese que el nombre de usuario sea único, y que las contraseñas coincidan."
      end
    end
  end

end
