class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :id_number, null: false, unique: true
      t.string :sex, null: false
      t.string :cellphone_number, unique: true
      t.string :email, null: false
      t.string :utype, null: false # 僧眾 / 在家眾

      # line account
      t.string :line_account
      t.string :line_name

      t.text :buddhism_exp
      t.text :skills

      t.timestamps
    end

    add_index :users, :id_number
    add_index :users, :cellphone_number
    add_index :users, [:first_name, :last_name]

  end
end
