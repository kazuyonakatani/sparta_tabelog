class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def average_score_star(restaurant_id)
  if Review.where(restaurant_id: restaurant_id).count == 0
    return "まだレビューはありません"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) == 5
     return "https://checkout.google.com/img/composite-5.gif"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 4
     return "https://checkout.google.com/img/composite-4.gif"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 3
     return "https://checkout.google.com/img/composite-3.gif"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 2
     return "https://checkout.google.com/img/composite-2.gif"
   else
     return "https://checkout.google.com/img/composite-1.gif"
   end
  end

  def score_star(restaurant_id)
  if Review.where(restaurant_id: restaurant_id).count == 0
    return "まだレビューはありません"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) == 5
     return "https://checkout.google.com/img/composite-5.gif"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 4
     return "https://checkout.google.com/img/composite-4.gif"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 3
     return "https://checkout.google.com/img/composite-3.gif"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 2
     return "https://checkout.google.com/img/composite-2.gif"
   else
     return "https://checkout.google.com/img/composite-1.gif"
   end
  end
end

