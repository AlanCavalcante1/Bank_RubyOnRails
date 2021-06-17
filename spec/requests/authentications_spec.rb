require 'rails_helper'
require 'factories/user'

RSpec.describe "Authentications", type: :request do

  describe "create user" do
    let(:users_params) { attributes_for(:user) }

    it "authenticate User create" do
      expect{
        post "/sign_up", params: {user: users_params}
      }.to change { User.count }.from(0).to(1)
      
      expect(response).to have_http_status(201)
      
    end

    it "authenticate BankAccount create" do
      expect{
        post "/sign_up", params: {user: users_params}
      }.to change { BankAccount.count }.from(0).to(1)
      expect(response).to have_http_status(201)
      
    end

  end

end
