class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.decimal :price
      t.string :currency
      t.string :status
      t.string :stripe_id
      t.string :email
      t.integer :event_id

      t.references :stall, null: false, foreign_key: true
      t.references :booth, null: false, foreign_key: true

      t.timestamps
    end
  end
end
