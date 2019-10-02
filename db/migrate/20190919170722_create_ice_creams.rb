class CreateIceCreams < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_creams do |t|
      t.string :flavor
      t.string :size
      t.boolean :m_and_ms
      t.boolean :peanuts
      t.boolean :sprinkles
      t.boolean :hot_chocolate_fudge
      t.integer :user_id
      t.string :phone_number

      t.timestamps
    end
  end
end
