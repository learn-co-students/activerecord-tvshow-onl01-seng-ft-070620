class Show < ActiveRecord::Base

# returns the highest rating for any TV show
  def self.highest_rating
    Show.maximum(:rating)
  end

# returns the highest-rated show
  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating)[0]
  end

# returns the lowest rating for any TV show
   def self.lowest_rating
     Show.minimum(:rating)
   end

# returns the lowest-rated show
  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating)[0]
  end

# returns the sum of all the ratings of all TV shows
  def self.ratings_sum
    Show.sum(:rating)
  end

# returns an array of all shows with a rating above 5
  def self.popular_shows
    Show.where("rating > ?", 5)
  end

# returns an array of all shows in alphabetical order
   def self.shows_by_alphabetical_order
     Show.all.order("name ASC")
   end

end
