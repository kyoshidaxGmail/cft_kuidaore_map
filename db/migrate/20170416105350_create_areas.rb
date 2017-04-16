class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.text :description
      t.integer :shops_count
      t.integer :stations_count
      t.integer :score

      t.timestamps
    end
  end
end
