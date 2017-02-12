require 'rails_helper'

RSpec.describe DestinationSerializer do
  let(:destination) { FactoryGirl.create(:destination) }
  let(:serializer) { DestinationSerializer.new(destination) }

  subject { serializer.as_json }

  it 'has an id' do
    expect(subject[:id]).to eq(destination.id)
  end

  it 'has a name' do
    expect(subject[:name]).to eq(destination.name)
  end

  it 'has an arrive_at' do
    expect(subject[:arrive_at]).to eq(destination.arrive_at)
  end

  it 'has a depart_at' do
    expect(subject[:depart_at]).to eq(destination.depart_at)
  end

end