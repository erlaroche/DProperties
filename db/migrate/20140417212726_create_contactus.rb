class CreateContactus < ActiveRecord::Migration
  def change
    create_table :contactus do |t|
      t.float :latitude
      t.float :longitutde
      t.string :address
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
