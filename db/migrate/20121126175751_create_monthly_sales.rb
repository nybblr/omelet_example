class CreateMonthlySales < ActiveRecord::Migration
  def change
    create_table :monthly_sales do |t|
      t.string :type
      t.string :total_cents
      t.string :total_currency
      t.integer :units

      t.timestamps
    end
  end
end
