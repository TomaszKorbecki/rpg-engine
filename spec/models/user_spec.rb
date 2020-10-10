require 'rails_helper'

RSpec.describe User, type: :model do
  describe "email uniqueness validation" do
    let(:user) { FactoryBot.build(:user, email: email) }
    let(:email) { "jon.doe@example.com" }

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
end
