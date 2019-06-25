class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
