class Accountable < ActiveRecord::Base
	belongs_to :enrollment
	enum gender: [ :male, :female, :not_telling ]
end
