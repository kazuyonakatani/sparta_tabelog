class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

end
