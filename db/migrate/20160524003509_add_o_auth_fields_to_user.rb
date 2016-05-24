class AddOAuthFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :screen_name, :string
    add_column :users, :uid, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_token_secret, :string
  end
end
