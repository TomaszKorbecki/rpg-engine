require 'rails_helper'

RSpec.describe Universe, type: :model do
  let(:universe) { FactoryBot.build(:universe) }

  it { expect(universe).to be_valid }
end
