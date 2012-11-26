class MonthlySales < ActiveRecord::Base
  attr_accessible :total_cents, :total_currency, :type, :units, :date


end
