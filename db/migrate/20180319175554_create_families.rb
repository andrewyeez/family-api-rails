class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.string :name
      t.integer :owner_id
      t.timestamps
    end
  end
end
