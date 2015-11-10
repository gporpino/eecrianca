class Enrollment < ActiveRecord::Base

	has_and_belongs_to_many :services
	belongs_to :student
	belongs_to :financial_accountable, :class_name => "Accountable"
	belongs_to :educational_accountable, :class_name => "Accountable"
end
