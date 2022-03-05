class ChartController < ApplicationController

  before_action :logged_in_user
  before_action :in_board

  def top
    @user_tasks = Task.where(user_id:session[:user_id].to_i).where(board_num:session[:board_id].to_i)
  end
end
