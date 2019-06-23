class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productName
      t.integer :productNumber
      t.string :productColor
      t.date :releaseDate
      t.string :manufacturer
      t.integer :price
      t.string :productType
      t.string :imgURL

      t.timestamps
    end
  end
end
