class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Maker
      t.string :Model
      t.string :ModelCode
      t.string :ProductType

      t.timestamps
    end
  end
end
