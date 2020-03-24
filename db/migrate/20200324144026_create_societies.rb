class CreateSocieties < ActiveRecord::Migration[5.2]
  def change
    create_table :societies do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :url

      t.timestamps
    end
  end
end
