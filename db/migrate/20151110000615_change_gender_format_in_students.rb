class ChangeGenderFormatInStudents < ActiveRecord::Migration
  def up
  	change_column :students, :gender, :integer
  end

  def down
  	change_column :students, :gender, :string
  end
end
