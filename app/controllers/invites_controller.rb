class InvitesController < ApplicationController

  def new
    @event = Event.find(params[:id])
    @invite = @event.invites.build
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def create
    @event = Event.find(params[:id])
    @invite = @event.invites.build(invite_params)
    @invite.save

    redirect_to @event
  end

  def update
    @event = Event.find(params[:id])
    @invite = Invite.find(params[:id])
    @invite.update(invite_params)

    redirect_to @event
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:guest_name, :guest_id, :status)
    end
end
