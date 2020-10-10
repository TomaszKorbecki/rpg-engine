class GameMastersController < UsersController
  before_action :authorise_game_master!

  def current_game_master
    current_user
  end
end
