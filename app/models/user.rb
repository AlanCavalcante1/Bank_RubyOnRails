class User < ApplicationRecord
  has_one :bank_account

  validates :first_name, :last_name, presence: true
  VALIDATE_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALIDATE_EMAIL_FORMAT, message: "email_format_incorrect" }
  VALIDATE_CPF_FORMAT = /\A[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}\Z/
  validates :cpf, presence: true, uniqueness: true, format: {with: VALIDATE_CPF_FORMAT, message: "cpf_format_incorrect"}
  validates :password, presence: true, length: {minimum:6}

end
