class AuthenticationController < ApplicationController
  def login
  end

  def sign_up
    @user = User.new(user_params)
    if @user.save
      @bank_account = BankAccount.create!(account_number: rand(1e7), user_id: @user.id)
      
      render json: {user: @user, bank_account: @bank_account}, status: 201
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :cpf, :first_name, :last_name)
    end
end
