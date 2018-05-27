class CoursesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_users do |t|
      t.integer :course_id
      t.integer :user_id
      t.boolean :is_major
    end

    add_index :courses_users, [:course_id, :user_id]
    add_index :courses_users, [:user_id, :is_major]
    add_index :courses_users, [:course_id, :is_major]
  end
end
