class CreateIceCreamOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_cream_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ice_cream, null: false, foreign_key: true

      t.timestamps
    end
  end
end
