class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.string :description
      t.date :due

      t.timestamps null: false
    end
  end
end
