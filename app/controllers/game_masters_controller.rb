class GameMastersController < UsersController
  before_action :authorise_game_master!
end
