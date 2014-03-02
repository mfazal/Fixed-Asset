class Asset < ActiveRecord::Base
	belongs_to :category
	belongs_to :brand
	belongs_to :employee
	belongs_to :custodian
end
