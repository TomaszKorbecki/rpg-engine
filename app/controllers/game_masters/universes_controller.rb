module GameMasters
  class UniversesController < GameMastersController
    def index
      @universes = current_game_master.universes
    end

    def new
      @universe = Universe.new(game_master: current_game_master)
    end

    def create
      @universe = Universe.new(game_master: current_game_master,
                               name: universe_params[:name],
                               description: universe_params[:description])
      @universe.save!
      flash[:notice] = "You created a #{@universe.name} universe!"
      redirect_to game_masters_universes_path
    end

    def edit
      @universe = current_universe
    end

    def update
      current_universe.update!(universe_params)
      flash[:notice] = "You updated the #{current_universe.name} universe!"
      redirect_to game_masters_universes_path
    end

    def destroy
      current_universe.destroy!
      flash[:notice] = "You deleted the #{current_universe.name} universe!"
      redirect_to game_masters_universes_path
    end

    private

    def current_universe
      @current_universe ||= current_game_master.universes.find(params[:id])
    end

    def universe_params
      params.require(:universe).permit(:name, :description)
    end
  end
end
