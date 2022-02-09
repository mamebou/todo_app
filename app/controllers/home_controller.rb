class HomeController < ApplicationController
  def top
    @tasks = all_tasks
    @user_tasks = @tasks.where(user_id:session[:user_id]).where(state:"未実行")
  end

  def state
     @task = Task.find(params[:id])
     @task.state = "実行中"
     @task.save
     redirect_to top_path
  end

end
