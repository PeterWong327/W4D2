class CatRentalRequest < ApplicationRecord
  STATUS = ['PENDING', 'APPROVED', 'DENIED']
  
  validates :start_date, :end_date, :cat_id, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }
  
  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat
  
  def overlapping_requests
    
  end
end
