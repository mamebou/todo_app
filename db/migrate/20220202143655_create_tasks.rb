class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :user_id
      t.text :state
      t.text :title
      t.date :limit_date

      t.timestamps
    end
  end
end
