class CoursesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_users do |t|
      t.integer :course_id
      t.integer :user_id
    end

    add_index :courses_users, [:course_id, :user_id]
  end
end
