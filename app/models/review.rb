class Review < ActiveRecord::Base

  default_scope {order(created_at: :desc)}
  belongs_to :product

  validates :rating, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :product_id, presence: true

end