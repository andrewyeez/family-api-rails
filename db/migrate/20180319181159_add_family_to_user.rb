class AddFamilyToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :family, foreigh_key: true
  end
end
