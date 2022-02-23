class ChartController < ApplicationController

  before_action :logged_in_user

  def top
    @user_tasks = Task.where(user_id:session[:user_id]).where(board_num:session[:board_id])
  end
end
