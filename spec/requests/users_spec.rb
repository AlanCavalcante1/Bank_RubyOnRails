require 'rails_helper'
require 'factories/user'

RSpec.describe "Users", type: :request do

  describe "POST /users" do
    it "create user" do
      expect{
        users_params = attributes_for(:user)
        post "/users", params: {user: users_params}
      }.to change { User.count }.from(0).to(1)
      
      expect(response).to have_http_status(201)
      
    end
  end
end
