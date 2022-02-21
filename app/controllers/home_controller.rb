class HomeController < ApplicationController

  before_action :logged_in_user
  
  def top
    @tasks = all_tasks
    @user_tasks = @tasks.where(user_id:session[:user_id]).where(state:"未実行")
  end

  def first
    if session[:user_id].nil?
      redirect_to login_path
    else
      redirect_to top_path
    end
  end

  def state
     @task = Task.find(params[:id])

     if @task.state == "未実行"
       @task.state = "実行中"
       @task.save
       redirect_to top_path
     elsif @task.state == "実行中"
       @task.state = "実行済み"
       @task.save
       redirect_to doing_path
     end
  end

  def doing
    @tasks = all_tasks
    @doing_tasks = @tasks.where(user_id:session[:user_id]).where(state:"実行中")
  end

  def detail
    @task = Task.find(params[:id])
  end

  def done
    @tasks = all_tasks
    @done_tasks = @tasks.where(user_id:session[:user_id]).where(state:"実行済み")
  end
end
