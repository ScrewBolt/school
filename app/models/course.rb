class Course < ApplicationRecord
  validates :name, :presence => true
  validates :id_number, :presence => true,
                        :length => { is: 2 }
  validates :started_at, :presence => true

  has_and_belongs_to_many :users
end
