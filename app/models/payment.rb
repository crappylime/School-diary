class Payment < ActiveRecord::Base
  belongs_to :student

  validates :student_id, :amount, :payment_date, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
