class Combo < ActiveRecord::Base
		has_many :beverages
		has_many :pastries
end
