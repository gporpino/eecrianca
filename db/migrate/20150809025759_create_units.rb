class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :year
      t.integer :sequence

      t.timestamps null: false
    end
  end
end
