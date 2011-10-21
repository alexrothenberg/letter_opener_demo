class WelcomeController < ApplicationController
  def index
    @invite = Invite.new
  end
end
