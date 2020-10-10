require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user, email: email, role: role) }

  let(:role) { "player" }
  let(:email) { "jon.doe@example.com" }

  describe "email uniqueness validation" do
    context "when email is unique" do
      it { expect(user).to be_valid }
    end

    context "when emails is not unique" do
      before do
        FactoryBot.create(:user, email: email)
      end

      it { expect(user).not_to be_valid }
    end
  end

  describe "roles" do
    context "when user is a player" do
      it { expect(user.game_master?).to be_falsey }
      it { expect(user.player?).to be_truthy }
    end

    context "when user is a game master" do
      let(:role) { "game_master" }

      it { expect(user.game_master?).to be_truthy }
      it { expect(user.player?).to be_falsey }
    end
  end
end
