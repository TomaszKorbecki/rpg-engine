require 'rails_helper'

RSpec.describe Adventure, type: :model do
  let(:adventure) { FactoryBot.build(:adventure) }

  it { expect(adventure).to be_valid }
end
