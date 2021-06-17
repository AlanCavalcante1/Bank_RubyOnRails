class AddActiveToBankAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :bank_accounts, :active, :boolean, :default => true
  end
end
