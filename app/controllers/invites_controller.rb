class InvitesController < ApplicationController
  # POST /invites
  def create
    @invite = Invite.new(params[:invite])

    if @invite.save
      InviteMailer.invite_requested(@invite).deliver
      redirect_to root_path, :notice => "Thanks for your interest #{@invite.email}.  You will hear from us soon."
    else
      render :action => "new"
    end
  end

end
