class MonthlySales < ActiveRecord::Base
  attr_accessible :total_cents, :total_currency, :category, :units, :date


end
