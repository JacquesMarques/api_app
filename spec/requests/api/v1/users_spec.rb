require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'GET api/v1/users' do
    it 'returns list of available users' do
      create(:user)
      total_users = User.all.count
      get api_v1_users_path
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).count).to eq(total_users)
    end
  end
end

