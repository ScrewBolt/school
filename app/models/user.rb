class User < ApplicationRecord
  has_many :courses_user
  has_and_belongs_to_many :courses

  def major_course
    result = self.courses_user.find_by(is_major: true)
    raise "User cannot without major course" if result.blank?
    result.course
  end
end
