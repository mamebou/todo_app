class TasksController < ApplicationController

  before_action :logged_in_user, only:[:index,:edit, :update, :destroy]
  before_action :in_board

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
    detail = params[:task][:detail]
    @task = Task.create(title:title, limit_date:limit_date, user_id:session[:user_id], state:"未実行", detail: detail,board_num:session[:board_id])

    redirect_to top_path
  end

    def edit
      @task = Task.find(params[:id])
    end

    def update
      @task = Task.find(params[:id])
      @task.update(task_params)
      redirect_to top_path
    end

    def destroy
       @task = Task.find(params[:id])
       @task.destroy
       redirect_to top_path
    end

     private
       def task_params
         params.require(:task).permit(:title,:limit_date,:detail)
       end
end
