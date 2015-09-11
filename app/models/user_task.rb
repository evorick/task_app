class UserTask < ActiveRecord::Base
  belongs_to :user
  # def index
  #   @user_tasks = UserTask.all.paginate(page: params[:page], per_page: 10)
  # end
  validates :description, :due, presence: true
end
