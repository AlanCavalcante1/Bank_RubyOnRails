require 'rails_helper'
require 'factories/user'

RSpec.describe "Users", type: :request do

  describe "GET /users" do

    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
    end

  end

  describe "POST /users" do
    it "create - JSON" do
      user = create(:user)
      users_params = attributes_for(:user)
      post "/users", params: {user: users_params}
      expect(response.body).to include_json(
        id: /\d/,
        first_name: users_params[:first_name],
        last_name: users_params[:last_name],
        email: users_params[:email],
        cpf: users_params[:cpf]
      )
    end
  end
end
