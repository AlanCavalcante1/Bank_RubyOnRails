require 'rails_helper'
require 'factories/user'

RSpec.describe User, type: :model do

  it "is invalid if have null info" do
    user = build(:user, first_name: nil, last_name: nil, email: nil, password: nil, cpf: nil) 
    expect(user).to_not be_valid  
  end

  it "must be not valid email" do
    user = build(:user, email: "example.com")
    expect(user).to_not be_valid
  end

  it "must be not valid cpf" do
    user = build(:user, cpf: "12312312399")
    expect(user).to_not be_valid
  end
  
end
