class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.date :payment_date
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
