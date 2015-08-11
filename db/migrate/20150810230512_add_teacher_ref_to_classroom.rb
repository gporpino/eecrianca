class AddTeacherRefToClassroom < ActiveRecord::Migration
  def change
    add_reference :classrooms, :teacher, references: :employees, index: true

    add_foreign_key :classrooms, :employees, column: :teacher_id
  end
end
