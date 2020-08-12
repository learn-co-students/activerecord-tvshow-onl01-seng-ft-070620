class Show < ActiveRecord::Base

    # Private
    def self.highest_rating
        # binding.pry
        Show.maximum(:rating)
    end

    def self.most_popular_show
        max_rating = Show.maximum(:rating)
        Show.find_by(rating: max_rating)
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        min_rating = Show.minimum(:rating)
        Show.find_by(rating: min_rating)
    end

    def self.ratings_sum
        Show.sum(:rating)
    end
    
    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order(name: :asc)
    end
end