class Student < ActiveRecord::Base
	has_many :enrrolments
	enum gender: [ :male, :female ]
end
