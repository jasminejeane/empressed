class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.string :to
      t.string :from
      t.integer :stylist_id

      t.timestamps null: false
    end
  end
end
