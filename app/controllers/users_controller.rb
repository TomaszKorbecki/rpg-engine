class UsersController < ApplicationController
  before_action :authenticate_user!

  def authorise_game_master!
    return if current_user.game_master?
    flash[:alert] = "Not a Game Master"
    redirect_to :root
  end
end
