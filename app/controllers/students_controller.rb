class StudentsController < ApplicationController
  respond_to :html, :js
  
  def index
  end

  def create
    Notification.create(
      :user_id => current_user.id,
      :category => 'be_answered',
      :data => '2'
    )
    @notifications = Notification.all
  end
  
  def show
    @notification = Notification.find(params[:id])
    @notification.is_read = true
    @notification.save
  end

end
