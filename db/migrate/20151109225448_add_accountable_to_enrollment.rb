class AddAccountableToEnrollment < ActiveRecord::Migration
  def change
  	change_table :enrollments do |t|
    	t.integer :financial_accountable_id, index: true, foreign_key: true
    	t.integer :educational_accountable_id, index: true, foreign_key: true
  	end

  	add_index :enrollments, :financial_accountable_id
  	add_index :enrollments, :educational_accountable_id

  	add_foreign_key :enrollments, :accountables, column: :financial_accountable_id
  	add_foreign_key :enrollments, :accountables, column: :educational_accountable_id
  end
end
