class ChatboxController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.joins(:user)
  end

end
