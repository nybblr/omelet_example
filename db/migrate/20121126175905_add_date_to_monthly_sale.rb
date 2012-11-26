class AddDateToMonthlySale < ActiveRecord::Migration
  def change
    add_column :monthly_sales, :date, :datetime
  end
end
