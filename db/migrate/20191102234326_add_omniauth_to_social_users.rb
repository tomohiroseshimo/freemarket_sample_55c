class AddOmniauthToSocialUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :social_users, :provider, :string
    add_column :social_users, :uid, :string
  end
end
