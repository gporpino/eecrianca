class ChangeGenderFormatInStudents < ActiveRecord::Migration
  def change
  	remove_column :students, :gender, :string
  	add_column :students, :gender, :integer
  end
end
