class HomeController < ApplicationController
  def top
    @tasks = all_tasks
    @user_tasks = @tasks.where(user_id:session[:user_id])
  end
end
