module BoardHelper
  def on_board
    session[:on_board]=true
  end

  def in_board
    session[:on_board] = false
  end
end
