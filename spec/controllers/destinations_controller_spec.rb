require 'rails_helper'

RSpec.describe DestinationsController, type: :controller do
  describe 'GET #index' do
    before do
      FactoryGirl.create_list(:destination, 2)
    end

    subject { JSON.parse(response.body) }

    it 'responds with status code 200' do
      get :index
      assert_response :ok
    end

    it 'returns a list of all destinations' do
      get :index
      expect(subject.count).to eq(Destination.count)
    end
  end
end
