class Notification < ActiveRecord::Base
  validates :user_id, :category, :data, :presence => true
end
