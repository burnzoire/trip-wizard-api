require 'rails_helper'

RSpec.describe Destination, type: :model do
  let(:destination) { FactoryGirl.create(:destination) }

  it 'has a valid factory' do
    expect(destination).to be_valid
  end

  context 'with arrival date after departure date' do
    let(:destination) do
      FactoryGirl.build(:destination, arrive_at: Date.today, depart_at: Date.yesterday)
    end
    it 'should be invalid' do
      expect(destination).to_not be_valid
    end
  end
end
