class HomeController < ApplicationController
  def top
    @tasks = all_tasks
    @user_tasks = @tasks.where(user_id:session[:user_id]).where(state:"未実行")
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

  def done
    @tasks = all_tasks
    @done_tasks = @tasks.where(user_id:session[:user_id]).where(state:"実行済み")
  end
end
