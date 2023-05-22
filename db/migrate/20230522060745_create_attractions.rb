class CreateAttractions < ActiveRecord::Migration[7.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :price
      t.integer :cycle_in_minutes

      t.timestamps
    end
  end
end
