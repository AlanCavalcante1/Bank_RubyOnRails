class User < ApplicationRecord
  validates :first_name, :last_name, :password, presence: true
  VALIDATE_EMAIL_FORMAT = /\A([^@\s]+)@([a-z0-9-\.]+)\.([a-z]{2,8})(\.[a-z]{2})?\Z/i
  #VALIDATE_EMAIL_FORMAT = /\A([a-z0-9\.-_]+)@( (?:[-a-z0-9]+\.) +[a-z]{2,} )\Z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALIDATE_EMAIL_FORMAT, message: "email_format_incorrect" }
  VALIDATE_CPF_FORMAT = /\A[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}\Z/
  validates :cpf, presence: true, uniqueness: true, format: {with: VALIDATE_CPF_FORMAT, message: "cpf_format_incorrect"}

end
