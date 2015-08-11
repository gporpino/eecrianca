class Classroom < ActiveRecord::Base
  belongs_to :teacher, class_name: "Employee"

  before_save :check_teacher

private
  def check_teacher 
    errors[:name] = "You must choose one teacher for classroom." unless self.teacher.role.teacher?
  end
end
