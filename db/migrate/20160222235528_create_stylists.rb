class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :first_name
      t.string :last_name
      t.string :speciality
      t.string :salon
      t.string :salon_address
      t.string :headshot
      t.string :email
      t.string :phone
      t.string :school
      t.boolean :cut
      t.boolean :color
      t.boolean :updo
      t.boolean :natural
      t.string :license
      t.text :bio
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
