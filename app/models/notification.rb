class Notification < ActiveRecord::Base
  # --- 模型关联
  belongs_to :user, :class_name => 'User'
  
  # --- 校验方法
  validates :user_id, :category, :data, :presence => true
end
