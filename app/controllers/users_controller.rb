class UsersController < ApplicationController

  def index

  end

    # GET /users/:id
  def show
    # @user = User.first
    @user = User.find(params[:id]) 

    # => app/views/users/show.html.erb
  end

    # GET /users/new
  def new
    # app/views/users/new.html.erb　こちらにアクセス
    @user = User.new
  end

    #POST /users
  def create
    # params => user.save => if ... else ... end
    # params[user[:name]] => 'foober'
    # params[user[:email]] =>'foober@gmail.com'
    @user = User.new(user_params)
    if @user.save
      # => Success
      # redirect_to user_path(@user)    => GET /users/:id
      # redirect_to user_path(@user.id) => GET /users/2

      reset_session
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      # redirect_to user_url(user)と同等、ヘルパーにloginのメソッドを定義している
      redirect_to @user
    else
      # => user/new
      render 'new',status: :unprocessable_entity
    end    
  end

  # praivateの中のミニヘルパーはファイル内ででは呼び出すことが可能。
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
