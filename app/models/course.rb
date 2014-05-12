class Course < ActiveRecord::Base
  has_many :step
  has_many :topic
  belongs_to :user
  validates_numericality_of :price
  
end
