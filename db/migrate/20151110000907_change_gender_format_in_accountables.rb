class ChangeGenderFormatInAccountables < ActiveRecord::Migration
  def change
  	remove_column :accountables, :gender, :string
  	add_column :accountables, :gender, :integer
  end
end
