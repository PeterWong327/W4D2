class Cat < ApplicationRecord
  COLORS = ['orange', 'blue', 'red', 'green']
  
  validates :birth_date, :name, presence: true
  validates :color, presence: true, inclusion: { in: COLORS }
  validates :sex, presence: true, inclusion: { in: ['M', 'F'] }
  validates_length_of :sex, :maximum => 1
  
  def self.colors
    COLORS
  end
  
  has_many :rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy
  
end
