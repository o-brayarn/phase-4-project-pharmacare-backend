class CreatePharmacists < ActiveRecord::Migration[6.1]
  def change
    create_table :pharmacists do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :contact
      t.string :gender

      t.timestamps
    end
  end
end
