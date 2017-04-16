class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.text :description
      t.integer :shops_count

      t.timestamps
    end
  end
end