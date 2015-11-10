class AddAccountableToEnrollment < ActiveRecord::Migration
  def change
    add_reference :enrollments, :financial_accountable, index: true, foreign_key: true
    add_reference :enrollments, :educational_accountable, index: true, foreign_key: true
  end
end
