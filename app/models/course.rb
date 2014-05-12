class Course < ActiveRecord::Base
  has_many :step
  belongs_to :user
  validates_numericality_of :price
  
end
