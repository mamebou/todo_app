class ChartController < ApplicationController
  def top
    @user_tasks = Task.where(user_id:session[:user_id])
  end
end
