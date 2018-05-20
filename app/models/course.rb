class Course < ApplicationRecord
  validates :name, :presence => true
  validates :started_at, :presence => true
end
