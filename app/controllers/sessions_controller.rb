class SessionsController < ApplicationController

  before_action :logged_in_user, only:[:edit, :update, :destroy]

  def new
  end

  def signup
    user = User.create(email:params[:email],password:params[:password],password_confirmation:params[:password])
    if user.save
      redirect_to login_path
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      flash[:notice] = "ログインしました"
      session[:user_id] = user.id
      redirect_to board_top_path
    else
      render "new"
    end
  end

  def destroy
    session.delete(:user_id)
    if logged_in?
      redirect_to top_path
    end
  end

  private
  # ログイン済みユーザーかどうか確認
   def logged_in_user
     unless logged_in?
       redirect_to login_url
     end
   end
end
