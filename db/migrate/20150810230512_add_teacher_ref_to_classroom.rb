class AddTeacherRefToClassroom < ActiveRecord::Migration
  def change
    add_reference :classrooms, :teacher, references: :employees, index: true, foreign_key: true
  end
end
