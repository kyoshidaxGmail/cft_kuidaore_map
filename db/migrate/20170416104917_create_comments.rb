class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :text
      t.integer :score
      t.integer :owner_id

      t.timestamps
    end
  end
end
