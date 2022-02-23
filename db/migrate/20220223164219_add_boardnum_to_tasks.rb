class AddBoardnumToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :board_num, :integer
  end
end
