class Asset < ActiveRecord::Base
	belongs_to :category
	belongs_to :brand
	has_one :employee
	has_one :custodian
end
