require 'rails_helper'
require 'factories/user'

RSpec.describe "Users", type: :request do

  describe "PUT /users" do
    #let(:user) { create(:user) }
    #let(:users_params) { attributes_for(:user) }
    #before(:each) {put "/users/#{user.id}", params: users_params }

    it "updates the record" do
      
      user = create(:user) #cria inimigo usando a FactoryBot
      users_params = attributes_for(:user).except(:password)
      put "/users/#{user.id}", params: {user: users_params}
      expect(user.reload).to have_attributes(users_params)
    end

  end
end
