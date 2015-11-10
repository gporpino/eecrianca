class AddWorktimesToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :first_worktime_start, :time
    add_column :employees, :first_worktime_end, :time
    add_column :employees, :second_worktime_start, :time
    add_column :employees, :second_worktime_end, :time
  end
end
