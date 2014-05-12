class Course < ActiveRecord::Base
  has_many :step
  belongs_to :user
  validates :price, presence: true
end
