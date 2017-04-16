class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.text :description
      t.integer :shops_count
      t.integer :score
      t.integer :area_id
      t.text :location

      t.timestamps
    end
  end
end
