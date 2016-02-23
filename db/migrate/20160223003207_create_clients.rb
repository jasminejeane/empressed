class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :headshot
      t.string :email
      t.string :phone
      t.text :bio
      t.string :hair_goal
      t.date :last_salon_visit
      t.string :service
      t.string :allergies
      t.string :referred_by
      t.text :favorite_products
      t.date :birthday
      t.string :hobbies
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
