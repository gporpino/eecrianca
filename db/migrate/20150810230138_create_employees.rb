class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :birthdate
      t.string :role

      t.timestamps null: false
    end
  end
end
