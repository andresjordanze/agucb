class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      if user.userType == "f8"
        redirect_to "/futbol8"
      else
        redirect_to "/menu_agucb"
      end
      flash.now[:success] = "Sesión iniciada exitosamente."
    else
      flash.now[:danger] = "Login o contraseña invalidos"
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
    flash.now[:danger] = "Sesion cerrada exitosamente."
  end

end
