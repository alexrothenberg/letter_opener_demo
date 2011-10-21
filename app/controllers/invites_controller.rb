class InvitesController < ApplicationController
  # GET /invites/new
  def new
    @invite = Invite.new
    # new.html.haml
  end

  # POST /invites
  def create
    @invite = Invite.new(params[:invite])

    if @invite.save
      InviteMailer.invite_requested(@invite).deliver
      redirect_to root_path, :notice => "Thanks for your interest #{@invite.name}.  You will hear from us soon."
    else
      render :action => "new"
    end
  end

end
