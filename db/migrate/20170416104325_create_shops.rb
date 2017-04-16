class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :mail_address
      t.string :phone_number

      t.boolean :can_use_credit_card
      t.boolean :has_parking_lot
      t.boolean :has_single_room
      t.integer :seats_count

      t.integer :genre_id
      t.integer :infomation_owner_id
      t.string :street_address

      t.integer :area_id
      t.text :location
      t.text :nearest_station_id_1
      t.integer :from_nearest_station_1
      t.text :nearest_station_id_2
      t.integer :from_nearest_station_2
      t.text :nearest_station_id_3
      t.integer :from_nearest_station_3

      t.string :regular_holiday
      t.time :business_hours_start_1
      t.time :business_hours_end_1
      t.time :business_hours_start_2
      t.time :business_hours_end_2

      t.integer :score
      t.integer :comments_count

      t.timestamps
    end
  end
end
