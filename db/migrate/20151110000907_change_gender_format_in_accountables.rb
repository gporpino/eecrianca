class ChangeGenderFormatInAccountables < ActiveRecord::Migration
  def up
  	change_column :accountables, :gender, :integer
  end
  def down
  	change_column :accountables, :gender, :string
  end
end
