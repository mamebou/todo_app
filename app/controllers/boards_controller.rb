class BoardsController < ApplicationController

  def new
    @board = Board.new
  end

  def show
    @boards = Board.all
  end

  def edit
    @board = Board.find(params[:id])
  end

  def create
    title = params[:board][:title]
    @board = Board.create(title:title, user_id:session[:user_id])

    redirect_to board_top_path
  end

  def board_top
    @user_boards = Board.where(user_id:session[:user_id])
  end

  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
    redirect_to board_top_path
  end

  def destroy
     @board = Board.find(params[:id])
     @board.destroy
     redirect_to board_top_path
  end

  private
    def board_params
      params.require(:board).permit(:title)
    end
end
