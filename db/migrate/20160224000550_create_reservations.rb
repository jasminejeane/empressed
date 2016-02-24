class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :stylist_id
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
