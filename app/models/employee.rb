class Employee < ActiveRecord::Base
	extend Enumerize

	enumerize :role, in: [:regular, :teacher, :human_resources, :financier, :coordinator, :manager ], default: :regular

	has_many :classrooms, class_name: "Employee",
                          foreign_key: "teacher_id"
end
