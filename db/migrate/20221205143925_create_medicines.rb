class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.belongs_to :pharmacy

      t.timestamps
    end
  end
end
