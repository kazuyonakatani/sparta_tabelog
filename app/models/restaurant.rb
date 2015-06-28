class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def average_score_star(restaurant_id)
   if Review.where(restaurant_id: restaurant_id).average(:score) == 5
     return "★★★★★"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 4
     return "★★★★☆"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 3
     return "★★★☆☆"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 2
     return "★★☆☆☆"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 1
     return "★☆☆☆☆"
   else
     return "☆☆☆☆☆"
   end
  end

    def score_star(restaurant_id)
   if Review.where(restaurant_id: restaurant_id).average(:score) == 5
     return "★★★★★"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 4
     return "★★★★☆"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 3
     return "★★★☆☆"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 2
     return "★★☆☆☆"
   elsif Review.where(restaurant_id: restaurant_id).average(:score) >= 1
     return "★☆☆☆☆"
   else
     return "☆☆☆☆☆"
   end
  end
end

