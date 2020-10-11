module Players
  class UniversesController < UsersController
    def index
      @universes = Universe.recent
    end
  end
end
