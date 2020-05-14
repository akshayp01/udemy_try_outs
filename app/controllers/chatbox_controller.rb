class ChatboxController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.joins(:user).order('created_at').last(20)
  end

end
