class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      if user.state == nil || user.state == 'activo'
        session[:user_id] = user.id
        if user.userType == "f8"
          redirect_to "/futbol8"
        else
          redirect_to "/menu_agucb"
        end
        flash.now[:success] = "Sesión iniciada exitosamente."
      else
        flash.now[:danger] = "La cuenta se encuentra bloqueada por falta de pago, porfavor contacte al administrador."
        render :action => 'new'
      end
    else
      flash.now[:danger] = "Login o contraseña inválidos"
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
    flash.now[:danger] = "Sesión cerrada exitosamente."
  end

end
