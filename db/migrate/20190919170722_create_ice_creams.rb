class CreateIceCreams < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_creams do |t|
      t.string :flavor
      t.string :toppings
      t.boolean :hot_chocolate_fudge
      t.string :size

      t.timestamps
    end
  end
end
