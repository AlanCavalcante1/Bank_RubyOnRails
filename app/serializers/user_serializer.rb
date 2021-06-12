class UserSerializer < ActiveModel::Serializer
  has_one :bank_account
  
  attributes :id, :first_name, :last_name, :cpf
end
