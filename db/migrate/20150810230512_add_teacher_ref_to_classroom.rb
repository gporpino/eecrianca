class AddTeacherRefToClassroom < ActiveRecord::Migration
  def change
    add_reference :classrooms, :teacher, index: true, foreign_key: true
  end
end
