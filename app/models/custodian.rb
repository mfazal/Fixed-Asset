class Custodian < ActiveRecord::Base
	belongs_to :employee
	has_many :assets
end
