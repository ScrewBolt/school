class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :id_number
      t.string :sex
      t.string :cellphone_number
      t.string :home_number
      t.string :email
      t.string :utype #僧眾 / 在家眾

      t.timestamps
    end
  end
end
