class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @tasks = Task.all
  end

  def create
    title = params[:task][:title]
    limit_date = params[:task][:limit_date]
    @task = Task.create(title:title, limit_date:limit_date, user_id:session[:user_id])

    redirect_to tasks_path
  end

    def edit
      @task = Task.find(params[:id])
    end

    def update
      @task = Task.find(params[:id])
      @task.update(task_params)
      redirect_to tasks_path
    end

    def destroy
       @task = Task.find(params[:id])
       @task.destroy
       redirect_to tasks_path
     end

     private
       def task_params
         params.require(:task).permit(:title,:limit_date)
       end
end
