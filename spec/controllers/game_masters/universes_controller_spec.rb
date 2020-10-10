require "rails_helper"

RSpec.xdescribe "Game Master's Universes management (some configuration problem - postpone for later)", :type => :system do
  let(:path_base) { "/game_masters/universes" }
  describe "#index" do
    let(:path) { path_base }

    it "shows Game Master's Universes" do
      visit path
      expect(page).to have_text("Universes")
    end
  end
end