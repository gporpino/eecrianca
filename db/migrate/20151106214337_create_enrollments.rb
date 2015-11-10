class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :school_year

      t.timestamps null: false
    end
  end
end
