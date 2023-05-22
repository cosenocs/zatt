class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(root_url, notice: "Добро пожаловать #{user.name}!")
    else
      flash.now[:alert] = 'Неправильный логин/пароль!'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_url, status: :see_other,
      notice: "Вы вышли из аккаунта"
  end

end
