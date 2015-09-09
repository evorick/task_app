class UserTask < ActiveRecord::Base
  # def index
  #   @user_tasks = UserTask.all.paginate(page: params[:page], per_page: 10)
  # end
  validates :description, :due, presence: true
end
