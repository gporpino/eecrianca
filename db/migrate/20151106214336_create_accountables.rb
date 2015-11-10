class CreateAccountables < ActiveRecord::Migration
  def change
    create_table :accountables do |t|
      t.string :name
      t.string :gender
      t.date :birthdate
      t.string :cpf
      t.string :identity_number
      t.string :issuing
      t.string :phone
      t.string :email
      t.string :occupation
      t.string :company
      t.string :nationality
      t.string :place_of_birth

      t.timestamps null: false
    end
  end
end
