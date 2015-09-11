class AddUsersToUserTasks < ActiveRecord::Migration
  def change
    add_reference :user_tasks, :user, index: true, foreign_key: true
  end
end
