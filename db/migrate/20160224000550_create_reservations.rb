class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :stylist_id
      t.integer :client_id

      t.timestamps null: false
    end
    add_foreign_key :reservations, :stylists
    add_foreign_key :reservations, :clients
  end
end
