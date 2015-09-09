class UserTask < ActiveRecord::Base
  validates :description, :due, presence: true
end
