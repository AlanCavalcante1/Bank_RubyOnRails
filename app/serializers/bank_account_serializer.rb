class BankAccountSerializer < ActiveModel::Serializer
  attributes :id, :balance, :account_number, :user_id
end
