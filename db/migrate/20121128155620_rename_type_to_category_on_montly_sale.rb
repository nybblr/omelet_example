class RenameTypeToCategoryOnMontlySale < ActiveRecord::Migration
	def change
		rename_column :monthly_sales, :type, :category
	end
end
