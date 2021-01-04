class AddConfirmableToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :time
    add_column :users, :confirmation_sent_at, :time
    add_column :users, :unconfirmed_email, :string
  end
end
