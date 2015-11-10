class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :amount

      t.timestamps null: false
    end
  end
end
