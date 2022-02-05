class ChangeDataUserIdToArticle < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :user_id, :Integer
  end
end
