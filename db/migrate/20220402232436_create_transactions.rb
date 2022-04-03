class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.text :square_payment_id
      t.decimal :price
      t.string :currency
      t.string :status

      t.references :booth, null: false, foreign_key: true

      t.timestamps
    end
  end
end
