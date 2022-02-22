class AddDetailToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :detail, :text
  end
end
