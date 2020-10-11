module GameMasters
  module Universes
    class AdventuresController < GameMastersController
      def new
        @universe = current_universe
        @adventure = Adventure.new(universe: current_universe)
      end

      def create
        @adventure = Adventure.create!(universe: current_universe,
                                       name: adventure_params[:name],
                                       description: adventure_params[:description])
        flash[:notice] = "You created an adventure: #{@adventure.name}!"
        redirect_to game_masters_universe_path(current_universe)
      end

      private

      def adventure_params
        params.require(:adventure).permit(:name, :description)
      end

      def current_universe
        @current_universe ||= current_game_master.universes.find(params[:universe_id])
      end
    end
  end
end

