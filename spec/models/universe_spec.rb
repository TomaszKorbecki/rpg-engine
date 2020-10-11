require 'rails_helper'

RSpec.describe Universe, type: :model do
  let(:universe) { FactoryBot.build(:universe) }

  it { expect(universe).to be_valid }

  describe "#recent_adventures" do
    subject { universe.recent_adventures }

    let(:expected_adventure_count) { 3 }
    let(:adventures) { FactoryBot.create_list(:adventure, adventure_count, universe: universe) }

    context "when the Universe has more than 3 adventures" do
      let(:adventure_count) { 5 }

      it { expect(subject.count).to eq expected_adventure_count }
    end

    context "when the Universe has up to 3 adventures" do
      let(:adventure_count) { 2 }
      let(:expected_adventure_count) { adventure_count }

      it { expect(subject.count).to eq expected_adventure_count }
    end
  end
end
