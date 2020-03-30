class AddImage < ActiveRecord::Migration[5.2]
  def change
    add_column :societies, :image, :string
    add_column :actualities, :image, :string
  end
end
